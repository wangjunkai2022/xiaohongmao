.class public Lcom/facebook/drawee/components/c;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final d:I = 0x4


# instance fields
.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/components/c;->a()V

    return-void
.end method

.method public static c()Lcom/facebook/drawee/components/c;
    .locals 1

    new-instance v0, Lcom/facebook/drawee/components/c;

    invoke-direct {v0}, Lcom/facebook/drawee/components/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/facebook/drawee/components/c;->a:Z

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/facebook/drawee/components/c;->b:I

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/components/c;->e()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/drawee/components/c;->a:Z

    return v0
.end method

.method public d()V
    .locals 1

    iget v0, p0, Lcom/facebook/drawee/components/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/drawee/components/c;->c:I

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/drawee/components/c;->c:I

    return-void
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxTapToRetryAttemps"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/drawee/components/c;->b:I

    return-void
.end method

.method public g(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tapToRetryEnabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/drawee/components/c;->a:Z

    return-void
.end method

.method public h()Z
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/drawee/components/c;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/drawee/components/c;->c:I

    iget v1, p0, Lcom/facebook/drawee/components/c;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
