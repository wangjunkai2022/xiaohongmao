.class public Lcom/qennnsad/aknkaksd/util/img/c;
.super Lcom/bumptech/glide/j;
.source "GlideRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/j<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/k;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/k;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/k;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/j;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/j<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/j;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/j;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic A(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->b2(Landroid/graphics/drawable/Drawable;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public A2(I)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->w0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic B()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->c2()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public B2(Landroid/graphics/drawable/Drawable;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->x0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic C(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->d2(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic C1(F)Lcom/bumptech/glide/j;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->I2(F)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public C2(Lcom/bumptech/glide/Priority;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->y0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic D(J)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/img/c;->e2(J)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D0(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/img/c;->D2(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D1(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Lcom/bumptech/glide/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->J2(Lcom/bumptech/glide/j;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public D2(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/e<",
            "TY;>;TY;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/a;->D0(Lcom/bumptech/glide/load/e;Ljava/lang/Object;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic E0(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->E2(Lcom/bumptech/glide/load/c;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic E1(Ljava/util/List;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->K2(Ljava/util/List;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public E2(Lcom/bumptech/glide/load/c;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->E0(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic F0(F)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->F2(F)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic F1([Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->L2([Lcom/bumptech/glide/j;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public F2(F)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->F0(F)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic G0(Z)Lcom/bumptech/glide/request/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->G2(Z)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic G1(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->R2(Lcom/bumptech/glide/l;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public G2(Z)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->G0(Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic H0(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->H2(Landroid/content/res/Resources$Theme;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public H1(Lcom/bumptech/glide/request/g;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/g<",
            "TTranscodeType;>;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->S0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public H2(Landroid/content/res/Resources$Theme;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->H0(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic I0(I)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->M2(I)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public I1(Lcom/bumptech/glide/request/a;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a<",
            "*>;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->T0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public I2(F)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->C1(F)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic J0(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->N2(Lcom/bumptech/glide/load/i;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public J1()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->e()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public J2(Lcom/bumptech/glide/j;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->D1(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public K1()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public K2(Ljava/util/List;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;>;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->E1(Ljava/util/List;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public L1()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->j()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public final varargs L2([Lcom/bumptech/glide/j;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->F1([Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic M0(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/img/c;->O2(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public M1()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->k()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public M2(I)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->I0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public N1()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/j;->X0()Lcom/bumptech/glide/j;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public N2(Lcom/bumptech/glide/load/i;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->J0(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic O0([Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->P2([Lcom/bumptech/glide/load/i;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public O1(Ljava/lang/Class;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->p(Ljava/lang/Class;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public O2(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/i<",
            "TY;>;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/a;->M0(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic P0([Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->Q2([Lcom/bumptech/glide/load/i;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public P1()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->q()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public varargs P2([Lcom/bumptech/glide/load/i;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->O0([Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic Q0(Z)Lcom/bumptech/glide/request/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->S2(Z)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public Q1(Lcom/bumptech/glide/load/engine/j;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->r(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public varargs Q2([Lcom/bumptech/glide/load/i;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->P0([Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic R0(Z)Lcom/bumptech/glide/request/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->T2(Z)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public R1()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->s()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public R2(Lcom/bumptech/glide/l;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/l<",
            "*-TTranscodeType;>;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->G1(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic S0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->H1(Lcom/bumptech/glide/request/g;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public S1()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->t()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public S2(Z)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->Q0(Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic T0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->I1(Lcom/bumptech/glide/request/a;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public T1(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->u(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public T2(Z)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->R0(Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public U1(Landroid/graphics/Bitmap$CompressFormat;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->v(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public V1(I)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->w(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public W1(I)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->x(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic X0()Lcom/bumptech/glide/j;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->N1()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public X1(Landroid/graphics/drawable/Drawable;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->y(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public Y1(Lcom/bumptech/glide/j;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->b1(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public Z1(Ljava/lang/Object;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->c1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic a(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->I1(Lcom/bumptech/glide/request/a;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public a2(I)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->z(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->n2(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b1(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Lcom/bumptech/glide/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->Y1(Lcom/bumptech/glide/j;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public b2(Landroid/graphics/drawable/Drawable;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->A(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic c(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->o2(Ljava/net/URL;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c1(Ljava/lang/Object;)Lcom/bumptech/glide/j;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->Z1(Ljava/lang/Object;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public c2()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->B()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->N1()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->j2(Landroid/net/Uri;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic d1()Lcom/bumptech/glide/j;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->f2()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public d2(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/DecodeFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->C(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic e()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->J1()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public e2(J)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/a;->D(J)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic f()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->K1()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method protected f2()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/util/img/c;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/qennnsad/aknkaksd/util/img/c;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/j;)V

    sget-object v1, Lcom/bumptech/glide/j;->E2:Lcom/bumptech/glide/request/h;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/util/img/c;->I1(Lcom/bumptech/glide/request/a;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g([B)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->p2([B)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public g2(Lcom/bumptech/glide/request/g;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/g<",
            "TTranscodeType;>;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->m1(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic h(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->k2(Ljava/io/File;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public h2(Landroid/graphics/Bitmap;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->n1(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic i(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->i2(Landroid/graphics/drawable/Drawable;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public i2(Landroid/graphics/drawable/Drawable;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->o1(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic j()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->L1()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public j2(Landroid/net/Uri;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->p1(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic k()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->M1()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k0()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->q2()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public k2(Ljava/io/File;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->q1(Ljava/io/File;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic l(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->h2(Landroid/graphics/Bitmap;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l0(Z)Lcom/bumptech/glide/request/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->r2(Z)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public l2(Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->r1(Ljava/lang/Integer;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->m2(Ljava/lang/Object;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m0()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->s2()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m1(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->g2(Lcom/bumptech/glide/request/g;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public m2(Ljava/lang/Object;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->s1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic n(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->l2(Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic n0()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->t2()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n1(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->h2(Landroid/graphics/Bitmap;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public n2(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->t1(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic o()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->N1()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o0()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->u2()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o1(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->i2(Landroid/graphics/drawable/Drawable;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public o2(Ljava/net/URL;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->u1(Ljava/net/URL;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic p(Ljava/lang/Class;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->O1(Ljava/lang/Class;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic p0()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->v2()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p1(Landroid/net/Uri;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->j2(Landroid/net/Uri;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public p2([B)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/j;->v1([B)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic q()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->P1()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q1(Ljava/io/File;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->k2(Ljava/io/File;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public q2()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->k0()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public bridge synthetic r(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->Q1(Lcom/bumptech/glide/load/engine/j;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r0(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->w2(Lcom/bumptech/glide/load/i;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r1(Ljava/lang/Integer;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->l2(Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public r2(Z)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->l0(Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic s()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->R1()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s1(Ljava/lang/Object;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->m2(Ljava/lang/Object;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public s2()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->m0()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public bridge synthetic t()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/img/c;->S1()Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t0(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/img/c;->x2(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic t1(Ljava/lang/String;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->n2(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public t2()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->n0()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public bridge synthetic u(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->T1(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic u0(I)Lcom/bumptech/glide/request/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->y2(I)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic u1(Ljava/net/URL;)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->o2(Ljava/net/URL;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public u2()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->o0()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public bridge synthetic v(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->U1(Landroid/graphics/Bitmap$CompressFormat;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v0(II)Lcom/bumptech/glide/request/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/img/c;->z2(II)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v1([B)Lcom/bumptech/glide/j;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->p2([B)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public v2()Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->p0()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object v0
.end method

.method public bridge synthetic w(I)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->V1(I)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w0(I)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->A2(I)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public w2(Lcom/bumptech/glide/load/i;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->r0(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic x(I)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->W1(I)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->B2(Landroid/graphics/drawable/Drawable;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public x2(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/i<",
            "TY;>;)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/a;->t0(Ljava/lang/Class;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic y(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->X1(Landroid/graphics/drawable/Drawable;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic y0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->C2(Lcom/bumptech/glide/Priority;)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public y2(I)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->u0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method

.method public bridge synthetic z(I)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/img/c;->a2(I)Lcom/qennnsad/aknkaksd/util/img/c;

    move-result-object p1

    return-object p1
.end method

.method public z2(II)Lcom/qennnsad/aknkaksd/util/img/c;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/qennnsad/aknkaksd/util/img/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/a;->v0(II)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/util/img/c;

    return-object p1
.end method
