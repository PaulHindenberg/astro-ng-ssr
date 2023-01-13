import { defineConfig } from 'astro/config';

// https://astro.build/config
import analogjsangular from "@analogjs/astro-angular";

// https://astro.build/config
import node from "@astrojs/node";

// https://astro.build/config
export default defineConfig({
  integrations: [analogjsangular()],
  output: "server",
  adapter: node({
    mode: 'middleware'
  })
});