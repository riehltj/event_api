const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
      },
      colors: {
        bark: {
          100: "#D7C49E", // light bark
          200: "#B5A371", // medium bark
          300: "#8E6B4E", // dark bark
          400: "#7B5B3E", // darker bark
          500: "#6B4D34", // bark color (main)
          600: "#4E3727", // darker bark
          700: "#3B2618", // darkest bark
        },
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries"),
  ],
};
