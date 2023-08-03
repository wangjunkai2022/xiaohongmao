.class public Lcom/tangxiaolv/telegramgallery/r;
.super Ljava/lang/Object;
.source "Theme.java"


# static fields
.field public static final a:I = 0x40ffffff

.field public static final b:I = 0x2f000000

.field public static final c:I = -0xf0f10

.field private static d:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/r;->d:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/r;->d:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static b(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tangxiaolv/telegramgallery/r;->c(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static c(IZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/tangxiaolv/telegramgallery/r;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    new-instance p1, Lcom/tangxiaolv/telegramgallery/r$a;

    invoke-direct {p1}, Lcom/tangxiaolv/telegramgallery/r$a;-><init>()V

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 3
    :goto_0
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    new-array v3, v2, [[I

    const/4 v4, 0x0

    new-array v5, v4, [I

    aput-object v5, v3, v4

    new-array v2, v2, [I

    aput p0, v2, v4

    invoke-direct {v1, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 4
    new-instance p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v1, v0, p1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    sget v1, Lcom/tangxiaolv/telegramgallery/q$d;->Y2:I

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    sget v1, Lcom/tangxiaolv/telegramgallery/q$d;->d3:I

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static f(Landroid/content/Context;)I
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    sget v1, Lcom/tangxiaolv/telegramgallery/q$d;->l3:I

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method
