.class public Lcom/facebook/imagepipeline/cache/j$a;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/cache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final b:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Z

.field public final e:Lcom/facebook/imagepipeline/cache/j$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field public f:I

.field public g:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/j$b;I)V
    .locals 0
    .param p3    # Lcom/facebook/imagepipeline/cache/j$b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "valueRef",
            "observer",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "TK;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/j$a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/references/a;

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/j$a;->b:Lcom/facebook/common/references/a;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    .line 5
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/cache/j$a;->d:Z

    .line 6
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/j$a;->e:Lcom/facebook/imagepipeline/cache/j$b;

    .line 7
    iput p1, p0, Lcom/facebook/imagepipeline/cache/j$a;->f:I

    .line 8
    iput p4, p0, Lcom/facebook/imagepipeline/cache/j$a;->g:I

    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/facebook/common/references/a;ILcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/imagepipeline/cache/j$a;
    .locals 1
    .param p3    # Lcom/facebook/imagepipeline/cache/j$b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef",
            "size",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/facebook/common/references/a<",
            "TV;>;I",
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "TK;>;)",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/cache/j$a;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/facebook/imagepipeline/cache/j$a;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/j$b;I)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/imagepipeline/cache/j$a;
    .locals 1
    .param p2    # Lcom/facebook/imagepipeline/cache/j$b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/facebook/common/references/a<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "TK;>;)",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Lcom/facebook/imagepipeline/cache/j$a;->a(Ljava/lang/Object;Lcom/facebook/common/references/a;ILcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/imagepipeline/cache/j$a;

    move-result-object p0

    return-object p0
.end method
