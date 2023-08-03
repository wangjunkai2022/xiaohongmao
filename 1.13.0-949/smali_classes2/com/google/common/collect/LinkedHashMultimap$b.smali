.class final Lcom/google/common/collect/LinkedHashMultimap$b;
.super Lcom/google/common/collect/j2;
.source "LinkedHashMultimap.java"

# interfaces
.implements Lcom/google/common/collect/LinkedHashMultimap$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/j2<",
        "TK;TV;>;",
        "Lcom/google/common/collect/LinkedHashMultimap$d<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lh3/d;
.end annotation


# instance fields
.field final d:I

.field e:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field f:Lcom/google/common/collect/LinkedHashMultimap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field g:Lcom/google/common/collect/LinkedHashMultimap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field h:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field i:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/collect/LinkedHashMultimap$b;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/j2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iput p3, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    .line 3
    iput-object p4, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/LinkedHashMultimap$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-object v0
.end method

.method public b()Lcom/google/common/collect/LinkedHashMultimap$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->g:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-object v0
.end method

.method public c(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->g:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-void
.end method

.method public d(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-void
.end method

.method public e()Lcom/google/common/collect/LinkedHashMultimap$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->h:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-object v0
.end method

.method public h()Lcom/google/common/collect/LinkedHashMultimap$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->i:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-object v0
.end method

.method i(Ljava/lang/Object;I)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->h:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method

.method public k(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->i:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method
