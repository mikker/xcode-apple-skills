import type { ExtensionAPI } from "@earendil-works/pi-coding-agent";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const extensionDir = dirname(fileURLToPath(import.meta.url));

export default function xcodeSkills(pi: ExtensionAPI) {
  pi.on("resources_discover", () => ({
    skillPaths: [join(extensionDir, "..", "SKILL.md")],
  }));
}
