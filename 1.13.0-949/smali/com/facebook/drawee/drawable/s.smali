.class public Lcom/facebook/drawee/drawable/s;
.super Ljava/lang/Object;
.source "ScalingUtils.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/drawable/s$b;,
        Lcom/facebook/drawee/drawable/s$o;,
        Lcom/facebook/drawee/drawable/s$m;,
        Lcom/facebook/drawee/drawable/s$k;,
        Lcom/facebook/drawee/drawable/s$n;,
        Lcom/facebook/drawee/drawable/s$e;,
        Lcom/facebook/drawee/drawable/s$f;,
        Lcom/facebook/drawee/drawable/s$d;,
        Lcom/facebook/drawee/drawable/s$i;,
        Lcom/facebook/drawee/drawable/s$h;,
        Lcom/facebook/drawee/drawable/s$g;,
        Lcom/facebook/drawee/drawable/s$j;,
        Lcom/facebook/drawee/drawable/s$l;,
        Lcom/facebook/drawee/drawable/s$a;,
        Lcom/facebook/drawee/drawable/s$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/drawable/r;
    .locals 4
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p0, Lcom/facebook/drawee/drawable/r;

    if-eqz v1, :cond_1

    .line 2
    check-cast p0, Lcom/facebook/drawee/drawable/r;

    return-object p0

    .line 3
    :cond_1
    instance-of v1, p0, Lcom/facebook/drawee/drawable/d;

    if-eqz v1, :cond_2

    .line 4
    check-cast p0, Lcom/facebook/drawee/drawable/d;

    invoke-interface {p0}, Lcom/facebook/drawee/drawable/d;->s()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/facebook/drawee/drawable/s;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/drawable/r;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    instance-of v1, p0, Lcom/facebook/drawee/drawable/a;

    if-eqz v1, :cond_4

    .line 7
    check-cast p0, Lcom/facebook/drawee/drawable/a;

    .line 8
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/a;->d()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 9
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/drawable/a;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 10
    invoke-static {v3}, Lcom/facebook/drawee/drawable/s;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/drawable/r;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method
