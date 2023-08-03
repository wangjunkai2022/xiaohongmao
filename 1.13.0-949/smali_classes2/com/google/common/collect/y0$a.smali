.class Lcom/google/common/collect/y0$a;
.super Lcom/google/common/collect/x0$c;
.source "FilteredKeySetMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/x0<",
        "TK;TV;>.c;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/y0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/y0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/y0$a;->b:Lcom/google/common/collect/y0;

    invoke-direct {p0, p1}, Lcom/google/common/collect/x0$c;-><init>(Lcom/google/common/collect/x0;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/google/common/collect/o4;->g(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/common/collect/o4;->k(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
