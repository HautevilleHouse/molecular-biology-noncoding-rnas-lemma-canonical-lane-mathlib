import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNoncodingRnasLemma

structure TrainingData where
  sequenceFeatures : List Float
  bindingLabels : List Float
  experimentalValidation : Prop

structure ModelParameters where
  learningRate : Float
  regularization : Float
  epochCount : Nat

structure ComputationalPredictorPackage where
  trainingData : TrainingData
  modelParams : ModelParameters
  predictionAccuracy : Prop
  generalizationCapability : Prop

structure ComputationalPredictorEvidence (C : ComputationalPredictorPackage) where
  predictionAccuracyClosed : C.predictionAccuracy
  generalizationCapabilityClosed : C.generalizationCapability

def ComputationalPredictorClosed (C : ComputationalPredictorPackage) : Prop :=
  C.predictionAccuracy ∧ C.generalizationCapability

theorem computational_predictor_closed_from_evidence
    (C : ComputationalPredictorPackage) (E : ComputationalPredictorEvidence C) :
    ComputationalPredictorClosed C := by
  exact And.intro E.predictionAccuracyClosed E.generalizationCapabilityClosed

end MolecularBiologyNoncodingRnasLemma
end HautevilleHouse