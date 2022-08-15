#!/bin/bash

cat <<EOF > mod.js
import { createRequire } from "https://deno.land/std@0.152.0/node/module.ts";
const require = createRequire(import.meta.url);
EOF
npx esbuild promise.js --bundle --platform=node --format=esm >> mod.js
