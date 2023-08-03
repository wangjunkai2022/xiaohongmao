.class public final Lcom/qennnsad/aknkaksd/util/fresco/c;
.super Ljava/lang/Object;
.source "FrescoUtil.java"


# static fields
.field public static final a:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;ILcom/facebook/drawee/view/SimpleDraweeView;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/util/fresco/c;->e(Landroid/content/Context;ILcom/facebook/drawee/view/SimpleDraweeView;II)V

    return-void
.end method

.method public static b(Landroid/net/Uri;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/d;->b()Lcom/facebook/imagepipeline/core/h;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/core/h;->h(Landroid/net/Uri;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/core/h;->f(Landroid/net/Uri;)V

    return-void
.end method

.method public static c(Landroid/content/Context;ILcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)Lz0/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/util/fresco/c$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/fresco/c$a;-><init>(Landroid/content/Context;ILcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 2
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/d;->j()Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->K(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/backends/pipeline/f;

    .line 4
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/f;->g0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e()Lcom/facebook/drawee/controller/a;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/net/Uri;IILcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    new-instance v0, Lcom/facebook/imagepipeline/common/d;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/common/d;-><init>(II)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->L(Lcom/facebook/imagepipeline/common/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/d;->j()Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Lcom/facebook/drawee/view/DraweeView;->getController()Lz0/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->S(Lz0/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/f;

    .line 6
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->P(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/backends/pipeline/f;

    .line 7
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e()Lcom/facebook/drawee/controller/a;

    move-result-object p0

    .line 8
    invoke-virtual {p3, p0}, Lcom/facebook/drawee/view/DraweeView;->setController(Lz0/a;)V

    return-void
.end method

.method private static e(Landroid/content/Context;ILcom/facebook/drawee/view/SimpleDraweeView;II)V
    .locals 4

    const/high16 v0, 0x41800000    # 16.0f

    .line 1
    invoke-static {p0, v0}, Lcom/qennnsad/aknkaksd/util/a1;->a(Landroid/content/Context;F)I

    move-result p0

    sub-int/2addr p1, p0

    int-to-double v0, p4

    int-to-double v2, p1

    int-to-double p3, p3

    div-double/2addr v2, p3

    mul-double v0, v0, v2

    double-to-int p0, v0

    .line 2
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, p1, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0xd

    .line 3
    invoke-virtual {p3, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
