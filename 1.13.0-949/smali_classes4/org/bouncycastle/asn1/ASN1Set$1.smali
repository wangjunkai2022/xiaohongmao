.class final Lorg/bouncycastle/asn1/ASN1Set$1;
.super Lorg/bouncycastle/asn1/ASN1UniversalType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/ASN1Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method fromImplicitConstructed(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->toASN1Set()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    return-object p1
.end method
