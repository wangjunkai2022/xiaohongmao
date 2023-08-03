.class public Lcom/facebook/common/references/g;
.super Lcom/facebook/common/references/a;
.source "RefCountCloseableReference.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/common/references/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/common/references/SharedReference;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)V
    .locals 0
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedReference",
            "leakHandler",
            "stacktrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;",
            "Lcom/facebook/common/references/a$d;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/common/references/a;-><init>(Lcom/facebook/common/references/SharedReference;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/h;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/Throwable;
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
            "t",
            "resourceReleaser",
            "leakHandler",
            "stacktrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/common/references/h<",
            "TT;>;",
            "Lcom/facebook/common/references/a$d;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/common/references/a;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/h;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/facebook/common/references/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/common/references/a;->y()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 2
    new-instance v0, Lcom/facebook/common/references/g;

    iget-object v1, p0, Lcom/facebook/common/references/a;->b:Lcom/facebook/common/references/SharedReference;

    iget-object v2, p0, Lcom/facebook/common/references/a;->c:Lcom/facebook/common/references/a$d;

    iget-object v3, p0, Lcom/facebook/common/references/a;->d:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/common/references/g;-><init>(Lcom/facebook/common/references/SharedReference;Lcom/facebook/common/references/a$d;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/common/references/g;->b()Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method
