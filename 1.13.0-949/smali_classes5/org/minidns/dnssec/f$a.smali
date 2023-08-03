.class final Lorg/minidns/dnssec/f$a;
.super Ljava/lang/Object;
.source "Verifier.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/minidns/dnssec/f;->a(Lorg/minidns/record/r;Ljava/util/List;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/minidns/dnssec/f$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B[B)I
    .locals 3

    .line 1
    iget v0, p0, Lorg/minidns/dnssec/f$a;->a:I

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 2
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_0

    .line 3
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    :goto_1
    sub-int/2addr p1, p2

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    array-length p1, p1

    array-length p2, p2

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/minidns/dnssec/f$a;->a([B[B)I

    move-result p1

    return p1
.end method
