import { defineConfig } from 'vite'
import tailwindcss from '@tailwindcss/vite'
import StimulusHMR from 'vite-plugin-stimulus-hmr'
import ViteRails from "vite-plugin-rails";

export default defineConfig({
  plugins: [
    tailwindcss(),
    ViteRails({
      envVars: { RAILS_ENV: "development" },
      envOptions: { defineOn: "import.meta.env" },
      fullReload: {
        additionalPaths: ["config/routes.rb", "app/views/**/*"],
        delay: 300,
      },
    }),
  ],
  build: { sourcemap: false },
})