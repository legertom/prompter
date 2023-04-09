export function copyToClipboard(textarea) {
    textarea.select();
    document.execCommand("copy");
  }