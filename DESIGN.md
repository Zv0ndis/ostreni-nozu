---
name: Ostření nožů
description: Hand sharpening on water stones, told as a cut-paper title sequence.
colors:
  cardinal: "#b03916"
  ember: "#e0602c"
  ink: "#15130f"
  bone: "#ece3cf"
  bone-dim: "#bdb4a0"
  olive: "#5e5d45"
  midnight: "#2a475a"
  ochre: "#c47a22"
  on-paper-dim: "#4d473c"
typography:
  display:
    fontFamily: "League Gothic, Arial Narrow, sans-serif"
    fontSize: "clamp(4.2rem, 13vw, 11.5rem)"
    fontWeight: 400
    lineHeight: 1.02
    letterSpacing: "0.01em"
  headline:
    fontFamily: "League Gothic, Arial Narrow, sans-serif"
    fontSize: "clamp(3.5rem, 9vw, 7.5rem)"
    fontWeight: 400
    lineHeight: 0.92
    letterSpacing: "0.01em"
  title:
    fontFamily: "League Gothic, Arial Narrow, sans-serif"
    fontSize: "clamp(1.7rem, 3.4vw, 2.5rem)"
    fontWeight: 400
    lineHeight: 1
    letterSpacing: "0.05em"
  body:
    fontFamily: "Barlow, Segoe UI, system-ui, sans-serif"
    fontSize: "1.0625rem"
    fontWeight: 400
    lineHeight: 1.6
  label:
    fontFamily: "League Gothic, Arial Narrow, sans-serif"
    fontSize: "1.2rem"
    fontWeight: 400
    lineHeight: 1
    letterSpacing: "0.14em"
  button:
    fontFamily: "League Gothic, Arial Narrow, sans-serif"
    fontSize: "1.5rem"
    fontWeight: 400
    lineHeight: 1
    letterSpacing: "0.08em"
  utility:
    fontFamily: "Barlow, Segoe UI, system-ui, sans-serif"
    fontSize: "0.85rem"
    fontWeight: 600
    letterSpacing: "0.06em"
rounded:
  none: "0"
spacing:
  gutter: "max(16px, 4vw)"
  field-block: "clamp(64px, 10vw, 128px)"
  sm: "16px"
  md: "28px"
  lg: "32px"
components:
  button-primary:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.bone}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: "0.7em 1.4em 0.6em"
  button-ghost:
    backgroundColor: "transparent"
    textColor: "{colors.bone}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: "0.7em 1.4em 0.6em"
  button-ghost-hover:
    backgroundColor: "{colors.bone}"
    textColor: "{colors.cardinal}"
  nav-link:
    textColor: "{colors.bone}"
    typography: "{typography.label}"
    padding: "6px 0"
  credit-line:
    textColor: "{colors.bone}"
    typography: "{typography.title}"
  credit-price:
    textColor: "{colors.ember}"
    typography: "{typography.title}"
  grit-card:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.bone}"
    rounded: "{rounded.none}"
    padding: "28px clamp(20px, 2.4vw, 36px)"
    height: "clamp(340px, 34vw, 500px)"
  copy-button:
    backgroundColor: "transparent"
    textColor: "{colors.bone-dim}"
    typography: "{typography.utility}"
    padding: "4px 0"
---

# Design System: Ostření nožů

## Overview

**Creative North Star: "The Cut-Paper Title Sequence"**

The site plays like the opening titles of a 1960s film: full-bleed flat colour fields cut one after another, black paper silhouettes laid on them at a slight tilt, and tall, skinny condensed capitals that sit just off the baseline. Each field carries one idea. The palette is a set of flat cards (cardinal, ink, bone, midnight, olive, ochre), never a gradient or a tint ramp, and the whole page sits under one fixed paper grain so it reads as printed stock, not a screen.

The density is low and the scale contrast is extreme. Headlines run to 11.5rem and the reading text stays a calm Barlow at 17px. Shapes are hand-cut polygons with irregular vertices, not geometric primitives. Motion is staccato: shapes jump between positions in stepped frames, the way paper cut-outs move in stop-motion, and never ease smoothly into place on entry.

The world is light-only by decision. Its colour fields are fixed, so there is no dark-scheme override (`color-scheme: light`).

**Key Characteristics:**
- Full-bleed flat colour fields, one idea per field, alternating cardinal, ink and bone.
- Black cut-paper silhouettes (inline SVG polygons) with slight rotation and irregular edges.
- Skinny condensed uppercase display type with small off-baseline shifts and rotations.
- One fixed paper grain over everything; scrolling layers stay clean.
- Square corners, no elevation, no bordered cards.
- Stepped (`steps()`) motion; a jittering dashed hand-drawn line marks the live element.

## Colors

Six flat card colours plus one hot accent and two dim reading tones; every colour is used as a whole field or a whole cut shape, never as a tint.

### Primary
- **Cardinal Orange** (cardinal): the hero field and the hand-off field, the base colour of the brand. Also the rivet dots on the knife handle and the ghost-button hover text. Matches `theme-color`.

### Secondary
- **Ember** (ember): the one hot accent on ink. Prices, the contact heading, link and phone hovers, the ink-field focus ring, and the scrollbar thumb. Only used on ink.

### Tertiary
- **Midnight** (midnight), **Olive** (olive), **Ochre** (ochre): the grit-sequence cards and the whetstone holder. They exist to give the coarse-to-fine sequence its own cards; ochre also serves as the text-selection colour.

### Neutral
- **Ink** (ink): the cut-paper silhouette colour, the price and contact fields, primary buttons, and text on ochre and bone.
- **Bone** (bone): display and body text on cardinal, ink, midnight and olive; the paper field of the process section; the whetstone face.
- **Dim Bone** (bone-dim): secondary text on ink (price notes, contact labels, footer).
- **Dim Ink** (on-paper-dim): secondary reading text on the bone paper field.

### Named Rules
**The Flat Card Rule.** A colour fills a full-bleed field or a whole cut shape. No gradients, no translucent tints, no colour ramps on the page.

**The Ember On Ink Rule.** Ember appears only on ink fields. On cardinal the accent is bone.

## Typography

**Display Font:** League Gothic (with Arial Narrow, sans-serif)
**Body Font:** Barlow 400 and 600 (with Segoe UI, system-ui, sans-serif)

**Character:** A skinny, poster-condensed gothic for everything that announces, against a plain, open grotesque for everything that informs. Both are self-hosted woff2 with Latin and Latin Extended subsets for Czech.

### Hierarchy
- **Display** (400, clamp(4.2rem, 13vw, 11.5rem), 1.02): the hero headline only, in uppercase bone, split into two lines with the second line shifted right and rotated about -1deg.
- **Headline** (400, clamp(3.5rem, 9vw, 7.5rem), 0.92): section titles. The hand-off step titles (up to 8rem) and the phone number (up to 11rem, 0.9) run at the same scale.
- **Title** (400, clamp(1.7rem, 3.4vw, 2.5rem), 1, 0.05em): price-list items and prices; contact values run slightly smaller (up to 2.2rem).
- **Body** (400, 1.0625rem, 1.6): Barlow reading text, kept to 22-52ch depending on the field.
- **Label** (400, 1.2rem, 0.14em, uppercase): nav links and small display labels such as contact field names (1.3rem). Wide tracking is reserved for this size.
- **Utility** (Barlow 600, 0.85rem, 0.06em, uppercase): the copy-to-clipboard text button.

### Named Rules
**The Two Voices Rule.** League Gothic is always uppercase and weight 400; Barlow is never uppercase except the utility text button. No third family.

**The Tabular Price Rule.** Prices use `font-variant-numeric: tabular-nums` so the credits column lines up.

## Layout

Each section is a full-bleed field with block padding of clamp(64px, 10vw, 128px) and side gutters of max(16px, 4vw). The hero fills the first viewport (min(100dvh, 980px)) and splits 7fr copy to 5fr image, with the blade crossing out of frame on the right. The price list is set as centred film credits: item right-aligned, price left-aligned, around a centre gutter, max 980px. The grit sequence breaks out of the gutter into four edge-to-edge cards with no gaps. The hand-off steps fall in a stagger, each stepped further right (0, 12vw, 24vw). Gaps come from a short set of values: 16, 24, 28, 32px, with larger clamps between blocks.

Breakpoints: at 900px the hero stacks with the blade under the copy, grits become two columns, the step stagger shrinks to padding (8vw, 16vw), and contact goes to one column. At 600px the top bar stacks and credits collapse to one left-aligned column.

## Elevation & Depth

Flat. There are no drop shadows anywhere. Depth comes from overlap only: the cut-paper knife sits over the whetstone, and the blade overlaps the field edge and the headline layer (z-index 1 under copy at 2). The paper grain is a fixed overlay (fractal-noise SVG, opacity 0.14, multiply) on top of everything, and it never scrolls.

### Named Rules
**The Paper Stack Rule.** Depth is shown by laying one cut shape on another, never by a shadow or blur.

## Shapes

Square corners throughout (radius 0). Shapes are hand-cut polygons with 4 to 20 irregular vertices, filled with flat colour, usually rotated a few degrees (whetstone -4deg, knife -14deg). The primary button is clipped to a slightly off-square quadrilateral, like a cut paper slip. Grit shards are polygons that shrink and multiply from #240 to #6000 to show the stone getting finer. Strokes appear only as thin rules: the 2px nav underline on hover, the 1px copy-button underline, and the ghost button's 2px inset outline.

**The Hand-Cut Rule.** Silhouettes are irregular polygons, not circles, rounded rects or icon glyphs.

## Components

### Buttons
Flat paper slips, tilted when touched.
- **Shape:** square, primary clipped to an off-square quadrilateral (polygon 0 4%, 100% 0, 98.5% 100%, 1% 94%).
- **Primary:** ink slip, bone League Gothic caps at 1.5rem, padding 0.7em 1.4em 0.6em.
- **Hover / Focus:** rotates -1.5deg and lifts 2px (0.35s, ease cubic-bezier(.16, 1, .3, 1)); presses down 1px on active. Focus is a 3px outline offset 4px in the field's focus colour (bone on cardinal, ember on ink, ink on bone).
- **Ghost:** transparent with a 2px bone inset outline, no clip; on hover fills bone with cardinal text.

### Navigation
Three display-caps links top-right (1.2rem, 0.14em tracking), wordmark top-left (1.6rem, 0.14em). Hover draws a 2px bone underline. Below 600px the bar stacks.

### Credit Lines (price list)
Film-credit pairs: item name in bone title caps with an optional Barlow note in dim bone, price in ember title caps with tabular figures.

### Grit Cards
Four full-height flat cards in sequence (ink, midnight, olive, ochre), each with a huge grit number, a short line and a field of shards in the card's text colour along the bottom 62%. Shards get smaller and more numerous card by card. Hover lifts the shards 6px with a -0.6deg tilt.

### Step Title Cards
Headline-size bone caps with a short Barlow line beside them, staggered rightward down the cardinal field.

### Contact
The phone number set as a headline-size link (hover ember), then three labelled values. The e-mail has a copy text button (Barlow 600 caps, 1px underline, dim bone to bone on hover).

### Motion
Stepped, never smooth on entry: the blade cuts in over 5 frames, headline lines over 3, cards cut up from the bottom in 4 frames as they scroll into view (scroll-driven, where supported). The knife edge carries a dashed bone line that jitters in 2 frames forever. All of it sits behind `prefers-reduced-motion: no-preference`.

## Do's and Don'ts

### Do:
- **Do** give each section its own full-bleed flat field from the palette, one idea per field.
- **Do** draw imagery as hand-cut inline SVG polygons in flat palette colours, rotated a few degrees.
- **Do** set announcements in uppercase League Gothic 400 and reading text in Barlow at 1.0625rem/1.6.
- **Do** use `steps()` timing for entry motion and gate all motion behind `prefers-reduced-motion: no-preference`.
- **Do** set the focus colour per field (bone on cardinal, ember on ink, ink on bone).

### Don't:
- **Don't** use drop shadows, blur or glow for depth; overlap cut shapes instead.
- **Don't** round corners or draw bordered cards; fields and cards are flat colour edge to edge.
- **Don't** use gradients or tints; every colour is a solid card.
- **Don't** put ember on cardinal or bone; it belongs to ink fields.
- **Don't** add a dark-scheme override; the fields are fixed and the page is light-only.
- **Don't** add raster photos where a cut-paper silhouette can carry the idea.
