/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./public/**/*.{js,php}"],
  theme: {
    extend: {
      keyframes: {
        animateCalling: {
          "0%, 100%": { backgroundColor: "#dc3545" },
          "50%": { backgroundColor: "transparent" },
        }
    },
    animation: {
      animateCalling :"animateCalling 2s linear infinite"
    }
  },
  plugins: [],
  }
}
