.class public Lcom/tangxiaolv/telegramgallery/Utils/f;
.super Ljava/lang/Object;
.source "LayoutHelper.java"


# static fields
.field public static final a:I = -0x1

.field public static final b:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IF)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p0

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static b(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3
    invoke-static {p3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p0

    invoke-static {p4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    .line 4
    invoke-static {p5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p2

    invoke-static {p6}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p3

    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static c(III)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public static d(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static e(IIF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method public static f(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p0

    int-to-float p1, p1

    .line 2
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3
    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p0

    invoke-static {p3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    .line 4
    invoke-static {p4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p2

    invoke-static {p5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p3

    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static g(IIFI)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p0

    int-to-float p1, p1

    .line 2
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3
    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static h(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p0

    int-to-float p1, p1

    .line 2
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    int-to-float p0, p3

    .line 3
    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p0

    int-to-float p1, p4

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    int-to-float p2, p5

    .line 4
    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p2

    int-to-float p3, p6

    invoke-static {p3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p3

    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static i(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p0

    int-to-float p1, p1

    .line 2
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    int-to-float p0, p4

    .line 3
    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p0

    int-to-float p1, p5

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    int-to-float p2, p6

    .line 4
    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p2

    int-to-float p4, p7

    invoke-static {p4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p4

    .line 5
    invoke-virtual {v0, p0, p1, p2, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 6
    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static j(III)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p0

    int-to-float p1, p1

    .line 2
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static k(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p0

    int-to-float p1, p1

    .line 2
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float p0, p3

    .line 3
    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p0

    int-to-float p1, p4

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    int-to-float p3, p5

    .line 4
    invoke-static {p3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p3

    int-to-float p4, p6

    invoke-static {p4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p4

    .line 5
    invoke-virtual {v0, p0, p1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 6
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static l(FFIIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    const/4 v6, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/tangxiaolv/telegramgallery/Utils/f;->m(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static m(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-ltz p6, :cond_0

    .line 3
    invoke-virtual {v0, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_0
    if-ltz p7, :cond_1

    if-ltz p8, :cond_1

    .line 4
    invoke-virtual {v0, p7, p8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_1
    int-to-float p0, p2

    .line 5
    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float p0, p3

    .line 6
    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float p0, p4

    .line 7
    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    int-to-float p0, p5

    .line 8
    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public static n(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    int-to-float v0, p0

    int-to-float v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static/range {v0 .. v8}, Lcom/tangxiaolv/telegramgallery/Utils/f;->m(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static o(III)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    int-to-float v0, p0

    int-to-float v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move v6, p2

    invoke-static/range {v0 .. v8}, Lcom/tangxiaolv/telegramgallery/Utils/f;->m(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static p(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    int-to-float v0, p0

    int-to-float v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v7, p2

    move v8, p3

    invoke-static/range {v0 .. v8}, Lcom/tangxiaolv/telegramgallery/Utils/f;->m(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static q(IIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    int-to-float v0, p0

    int-to-float v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/tangxiaolv/telegramgallery/Utils/f;->m(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static r(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    int-to-float v0, p0

    int-to-float v1, p1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v8}, Lcom/tangxiaolv/telegramgallery/Utils/f;->m(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static s(IIIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    int-to-float v0, p0

    int-to-float v1, p1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lcom/tangxiaolv/telegramgallery/Utils/f;->m(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static t(III)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float p0, p0

    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p0

    int-to-float p1, p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->u(F)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method private static u(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p0

    int-to-float p0, p0

    :goto_0
    float-to-int p0, p0

    return p0
.end method
