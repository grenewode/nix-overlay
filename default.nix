self: super:
{
  protonmail-desktop-bridge = self.callPackage ./protonmail-bridge {};
  imposter-pass = self.callPackage ./imposter-pass {};
}
