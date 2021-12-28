#!/usr/bin/env python3
import autograde
import os, os.path

assignment_name = 'PA5'
release='1'

autograde.Test.time_limit = 60

class CacheTests(autograde.FileTests):
    def __init__(self, **kws):
        super(CacheTests, self).__init__(**kws)

        self.repl = kws.get('repl', kws['id'])

    def get_tests(self, project, prog, build_dir, data_dir):
        test_group = f'{project}:{self.name}' if self.name else project

        # gather the names of the reference files
        fnames = [fname for fname in os.listdir(data_dir)
                    if fname.startswith(self.ref_prefix)
                    and fname.endswith(self.suffix)]
        fnames.sort()

        autograde.logger.debug('Tests for %s: %s', self.id, fnames)

        # for each reference name, determine the corresponding trace file
        for ref_name in fnames:
            id = ref_name[len(self.ref_prefix):-len(self.suffix)]
            trace, csize, assoc, bsize = id.split('.')

            tracefile = os.path.join(data_dir, f'trace{trace}.txt')

            if not os.path.exists(tracefile):
                autograde.logger.warning('Missing trace file for %r: %r', ref_name, tracefile)
                continue

            ref = os.path.join(data_dir, ref_name)

            yield autograde.FileRefTest(
                cmd      = ['./' + prog, csize, assoc, self.repl, bsize, tracefile],
                ref_file = ref,
                category = self.category,
                group    = test_group,
                weight   = self.weight,
                dir      = build_dir,
            )

assignment = autograde.Project('cachesim',
    CacheTests(id='fifo', weight=2, ref_prefix='test.'),
    CacheTests(id='lru', category=autograde.EXTRA, ref_prefix='test.'),
    user_class=None,
)



if __name__ == '__main__':
    autograde.main(assignment_name, assignment, release)
