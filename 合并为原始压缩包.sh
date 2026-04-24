#!/bin/bash
# 在仓库根目录执行，将分片拼回与原始 root_cYZzB.tar.gz 相同的文件
out="${1:-root_cYZzB_restored.tar.gz}"
set -e
cd "$(dirname "$0")"
cat root_cYZzB.tar.gz.* > "$out"
echo "已生成: $(pwd)/$out"
