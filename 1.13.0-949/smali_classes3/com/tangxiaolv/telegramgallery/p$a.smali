.class public final Lcom/tangxiaolv/telegramgallery/p$a;
.super Ljava/lang/Object;
.source "GalleryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/tangxiaolv/telegramgallery/p$a;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "singlePhoto",
        "Landroid/content/Intent;",
        "a",
        "<init>",
        "()V",
        "telegramgallery_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance p1, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;

    invoke-direct {p1}, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;-><init>()V

    .line 3
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->e(Z)Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;

    move-result-object p1

    const-string p2, "image/*"

    const-string v1, "video/*"

    .line 4
    filled-new-array {p2, v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->b([Ljava/lang/String;)Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->a()Lcom/tangxiaolv/telegramgallery/GalleryConfig;

    move-result-object p1

    const-string p2, "GALLERY_CONFIG"

    .line 6
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method
