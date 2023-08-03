.class final Lcom/google/common/collect/x4;
.super Ljava/lang/Object;
.source "SortedMultisets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/x4$b;,
        Lcom/google/common/collect/x4$a;
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/k3$a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/x4;->d(Lcom/google/common/collect/k3$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/k3$a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/x4;->c(Lcom/google/common/collect/k3$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/common/collect/k3$a;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lcom/google/common/collect/k3$a;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;)TE;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/k3$a;->getElement()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static d(Lcom/google/common/collect/k3$a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;)TE;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/k3$a;->getElement()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
