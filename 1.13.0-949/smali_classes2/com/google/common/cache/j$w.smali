.class Lcom/google/common/cache/j$w;
.super Lcom/google/common/cache/j$d;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/j$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lcom/google/common/cache/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field volatile d:Lcom/google/common/cache/j$a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/n;)V
    .locals 1
    .param p3    # Lcom/google/common/cache/n;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/j$d;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/cache/j;->S()Lcom/google/common/cache/j$a0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/j$w;->d:Lcom/google/common/cache/j$a0;

    .line 3
    iput-object p1, p0, Lcom/google/common/cache/j$w;->a:Ljava/lang/Object;

    .line 4
    iput p2, p0, Lcom/google/common/cache/j$w;->b:I

    .line 5
    iput-object p3, p0, Lcom/google/common/cache/j$w;->c:Lcom/google/common/cache/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/cache/j$a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$w;->d:Lcom/google/common/cache/j$a0;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/common/cache/j$w;->b:I

    return v0
.end method

.method public c()Lcom/google/common/cache/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$w;->c:Lcom/google/common/cache/n;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$w;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public l(Lcom/google/common/cache/j$a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/j$a0<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/j$w;->d:Lcom/google/common/cache/j$a0;

    return-void
.end method
