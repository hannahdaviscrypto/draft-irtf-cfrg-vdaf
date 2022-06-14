# Definition of IDPFs.

from __future__ import annotations
from typing import Union
from sagelib.common import Bytes, Error, Unsigned, Vec
import sagelib.field as field
import sagelib.prg as prg

# An Incremntal Distributed Point Function (IDPF).
class Idpf:
    # Number of keys generated by the IPDF-key generation algorithm.
    SHARES: Unsigned = None

    # Bit length of valid input values (i.e., values of `alpha`).
    BITS: Unsigned = None

    # The finite field used to represent the inner nodes of the IDPF tree.
    FieldInner: field.Field = None

    # The finite field used to represent the leaf nodes of the IDPF tree.
    FieldLeaf: field.Field = None

    # Generates a sequence of IDPF-keys of length `SHARES`. Value `alpha` is the
    # input to encode. Values `beta_inner` and `beta_leaf` are assigned to the
    # values of the non-zero path of the IPDF tree.
    #
    # An error is raised if integer `alpha` is larger than or equal to `2^BITS`.
    @classmethod
    def gen(Ipdf,
            alpha: Unsigned,
            beta_inner: Vec[Idpf.FieldInner],
            beta_leaf: Idpf.FieldLeaf) -> Vec[Bytes]:
        raise Error('not implemented')

    # Evaluate an IDPF key at a given level of the tree and with the given set
    # of prefixes.
    #
    # An error is raised if any element of `prefixes` is larger than or equal to
    # `2^level` or if `level` greater than `BITS`.
    @classmethod
    def eval(Idpf,
             key: Bytes,
             level: Unsigned,
             prefixes: Vec[Unsigned]) -> Union[Vec[Idpf.FieldInner],
                                               Vec[Idpf.FieldLeaf]]:
        raise Error('not implemented')
