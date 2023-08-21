--- @meta
--- @class Hero: Entity
Hero = { }

--- Returns the current XP of the hero.
--- @param hero Hero # The hero object.
--- @return number # The current `XP`.
--- @nodiscard
function Hero.GetCurrentXP(hero) end

--- Returns the number of ability points available for the hero.
--- @param hero Hero # The hero object.
--- @return number # The number of ability points.
--- @nodiscard
function Hero.GetAbilityPoints(hero) end

--- Returns the respawn time of the hero.
--- @param hero Hero # The hero object.
--- @return number # The remaining time until respawn.
--- @nodiscard
function Hero.GetRespawnTime(hero) end

--- Returns the respawn time penalty of the hero.
--- @param hero Hero # The hero object.
--- @return number # The respawn time penalty.
--- @nodiscard
function Hero.GetRespawnTimePenalty(hero) end

--- Returns the primary attribute of the hero.
--- @param hero Hero # The hero object.
--- @return Enum.Attributes # The primary attribute.
--- @nodiscard
function Hero.GetPrimaryAttribute(hero) end

--- Returns the amount of strength of the hero.
--- @param hero Hero # The hero object.
--- @return number # The amount of strength.
--- @nodiscard
function Hero.GetStrength(hero) end

--- Returns the amount of agility of the hero.
--- @param hero Hero # The hero object.
--- @return number # The amount of agility.
--- @nodiscard
function Hero.GetAgility(hero) end

--- Returns the amount of intellect of the hero.
--- @param hero Hero # The hero object.
--- @return number # The amount of intellect.
--- @nodiscard
function Hero.GetIntellect(hero) end

--- Returns the total amount of strength of the hero.
--- @param hero Hero # The hero object.
--- @return number # The total amount of strength.
--- @nodiscard
function Hero.GetStrengthTotal(hero) end

--- Returns the total amount of agility of the hero.
--- @param hero Hero # The hero object.
--- @return number # The total amount of agility.
--- @nodiscard
function Hero.GetAgilityTotal(hero) end

--- Returns the total amount of intellect of the hero.
--- @param hero Hero # The hero object.
--- @return number # The total amount of intellect.
--- @nodiscard
function Hero.GetIntellectTotal(hero) end

--- Returns the recent damage taken by the hero.
--- @param hero Hero # The hero object.
--- @return number # The recent damage taken.
--- @nodiscard
function Hero.GetRecentDamage(hero) end

--- Returns the pain factor of the hero.
--- @param hero Hero # The hero object.
--- @return number # The pain factor.
--- @nodiscard
function Hero.GetPainFactor(hero) end

--- Returns the target pain factor of the hero.
--- @param hero Hero # The hero object.
--- @return number # The target pain factor.
--- @nodiscard
function Hero.GetTargetPainFactor(hero) end

--- Returns the life state of the hero.
--- @param hero Hero # The hero object.
--- @return number # The life state.
--- @nodiscard
function Hero.GetLifeState(hero) end

--- Returns the player ID of the hero.
--- @param hero Hero # The hero object.
--- @return number # The player `ID`.
--- @nodiscard
function Hero.GetPlayerID(hero) end

--- Returns the replicating other hero model.
--- @param hero Hero # The hero object.
--- @return Hero # The replicating other hero model. If absent, returns 0.
--- @nodiscard
function Hero.GetReplicatingOtherHeroModel(hero) end

--- Accepts an ability and returns a boolean value indicating whether the talent is learned.
--- @param ability Ability # The ability to check.
--- @return boolean # `True` if the talent is learned, `False` otherwise.
--- @nodiscard
function Hero.TalentIsLearned(ability) end

return Hero