=begin
Reflecting on Principle
1) How are Ruby modules (and similar features from other langs)
   different from a class, in their purpose?
   Ruby modules never have an instance. The serve as a group of messages/behaviors
   that may be shared across classes
2) What is LSP?
  Lishcov Substitution Principle
  Any subtye must be able to validly standin for any supertypes
3) Briefly describe how the template method pattern works.
  A method template is describe and layed out in a supertype, say "initialize."
  From there, a "post_initialize" method may be added in the supertype's
  initialize method that has a default in the supertype, and can be overriden
  for special means in the subtypes. (I did this in this assignement for
  assigning the sprites)
=end
