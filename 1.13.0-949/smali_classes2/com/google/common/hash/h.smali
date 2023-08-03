.class final Lcom/google/common/hash/h;
.super Lcom/google/common/hash/c;
.source "ChecksumHashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/h$b;
    }
.end annotation


# static fields
.field private static final d:J


# instance fields
.field private final a:Lcom/google/common/hash/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/hash/r<",
            "+",
            "Ljava/util/zip/Checksum;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/common/hash/r;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/r<",
            "+",
            "Ljava/util/zip/Checksum;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/r;

    iput-object p1, p0, Lcom/google/common/hash/h;->a:Lcom/google/common/hash/r;

    const/16 p1, 0x20

    if-eq p2, p1, :cond_1

    const/16 p1, 0x40

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "bits (%s) must be either 32 or 64"

    .line 3
    invoke-static {p1, v0, p2}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    .line 4
    iput p2, p0, Lcom/google/common/hash/h;->b:I

    .line 5
    invoke-static {p3}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/hash/h;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic n(Lcom/google/common/hash/h;)I
    .locals 0

    iget p0, p0, Lcom/google/common/hash/h;->b:I

    return p0
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/common/hash/h;->b:I

    return v0
.end method

.method public h()Lcom/google/common/hash/n;
    .locals 3

    new-instance v0, Lcom/google/common/hash/h$b;

    iget-object v1, p0, Lcom/google/common/hash/h;->a:Lcom/google/common/hash/r;

    invoke-interface {v1}, Lcom/google/common/base/i0;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/Checksum;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/hash/h$b;-><init>(Lcom/google/common/hash/h;Ljava/util/zip/Checksum;Lcom/google/common/hash/h$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/h;->c:Ljava/lang/String;

    return-object v0
.end method
