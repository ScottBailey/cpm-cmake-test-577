# cpm-cmake-test-577

See:
- https://github.com/cpm-cmake/CPM.cmake/issues/577
- https://github.com/cpm-cmake/CPM.cmake/pull/572

Execute the `go.sh` script to creat trace files for inital and subsequent runs where the export is both set and unset.

Let me suggest meld as a nice diff tool.

```bash
meld trace_set trace_unset
```
