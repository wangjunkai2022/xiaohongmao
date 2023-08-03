.class public final Lcom/tangxiaolv/telegramgallery/GalleryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "GalleryActivity.kt"

# interfaces
.implements Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/GalleryActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGalleryActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GalleryActivity.kt\ncom/tangxiaolv/telegramgallery/GalleryActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n1#2:289\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 D2\u00020\u00012\u00020\u0002:\u00013B\u0007\u00a2\u0006\u0004\u0008B\u0010CJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0002J\u0012\u0010\u000e\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0014J-\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0003H\u0016J\u0008\u0010\u0018\u001a\u00020\u0003H\u0016J\u0008\u0010\u0019\u001a\u00020\u0003H\u0014J\u0008\u0010\u001a\u001a\u00020\u0003H\u0014J\u0008\u0010\u001c\u001a\u00020\u001bH\u0016J(\u0010#\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020!H\u0016J\u0018\u0010$\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020!H\u0016J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020!H\u0016J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020!H\u0016J\u0018\u0010*\u001a\u00020\u001b2\u0006\u0010\'\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020(H\u0016J\u0008\u0010+\u001a\u00020\u0003H\u0014J\u000e\u0010-\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u0005J\u000e\u0010.\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005R\u001e\u00102\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u00105\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0014\u0010<\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010;R\"\u0010A\u001a\u0010\u0012\u000c\u0012\n >*\u0004\u0018\u00010\t0\t0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@\u00a8\u0006E"
    }
    d2 = {
        "Lcom/tangxiaolv/telegramgallery/GalleryActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;",
        "",
        "U",
        "",
        "file",
        "Ljava/io/File;",
        "N",
        "Landroid/content/Intent;",
        "data",
        "O",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "onLowMemory",
        "onBackPressed",
        "onPause",
        "onResume",
        "",
        "u",
        "Lcom/tangxiaolv/telegramgallery/Actionbar/f;",
        "fragment",
        "removeLast",
        "forceWithoutAnimation",
        "Lcom/tangxiaolv/telegramgallery/Actionbar/b;",
        "layout",
        "l",
        "s",
        "d",
        "t",
        "keyCode",
        "Landroid/view/KeyEvent;",
        "event",
        "onKeyUp",
        "onDestroy",
        "path",
        "R",
        "S",
        "Ljava/util/ArrayList;",
        "a",
        "Ljava/util/ArrayList;",
        "mainFragmentsStack",
        "b",
        "Lcom/tangxiaolv/telegramgallery/Actionbar/b;",
        "actionBarLayout",
        "Lcom/tangxiaolv/telegramgallery/m;",
        "c",
        "Lcom/tangxiaolv/telegramgallery/m;",
        "albumPickerActivity",
        "Lcom/tangxiaolv/telegramgallery/m$h;",
        "Lcom/tangxiaolv/telegramgallery/m$h;",
        "mPhotoAlbumPickerActivityDelegate",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "kotlin.jvm.PlatformType",
        "e",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "imageEditor",
        "<init>",
        "()V",
        "f",
        "telegramgallery_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final f:Lcom/tangxiaolv/telegramgallery/GalleryActivity$b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final g:Ljava/lang/String; = "PHOTOS"
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final h:Ljava/lang/String; = "VIDEOS"
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final i:Ljava/lang/String; = "GALLERY_CONFIG"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final j:Ljava/lang/String; = "EDITED_CACHES"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final k:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private static l:Landroid/content/SharedPreferences;
    .annotation build Lm8/h;
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/Actionbar/f;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Lcom/tangxiaolv/telegramgallery/m;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final d:Lcom/tangxiaolv/telegramgallery/m$h;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tangxiaolv/telegramgallery/GalleryActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tangxiaolv/telegramgallery/GalleryActivity$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->f:Lcom/tangxiaolv/telegramgallery/GalleryActivity$b;

    sget-object v0, Lcom/tangxiaolv/telegramgallery/GalleryActivity$a;->a:Lcom/tangxiaolv/telegramgallery/GalleryActivity$a;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->k:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/tangxiaolv/telegramgallery/GalleryActivity$c;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/GalleryActivity$c;-><init>(Lcom/tangxiaolv/telegramgallery/GalleryActivity;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->d:Lcom/tangxiaolv/telegramgallery/m$h;

    .line 4
    new-instance v0, Lcom/tangxiaolv/telegramgallery/j;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/j;-><init>()V

    new-instance v1, Lcom/tangxiaolv/telegramgallery/f;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/f;-><init>(Lcom/tangxiaolv/telegramgallery/GalleryActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026leEditorImage(it) }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->e:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic G(Lcom/tangxiaolv/telegramgallery/GalleryActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->P(Lcom/tangxiaolv/telegramgallery/GalleryActivity;Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic H()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->k:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic I()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->l:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static final synthetic J(Landroid/content/SharedPreferences;)V
    .locals 0

    sput-object p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->l:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static final M(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->f:Lcom/tangxiaolv/telegramgallery/GalleryActivity$b;

    invoke-virtual {v0, p0}, Lcom/tangxiaolv/telegramgallery/GalleryActivity$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final N(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "."

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 3
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tempfile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final O(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "cancel_edit"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "output_path"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "is_image_edited"

    .line 3
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    if-eqz p1, :cond_3

    .line 5
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tangxiaolv/telegramgallery/o;->p0(Landroid/graphics/Bitmap;)V

    .line 7
    :cond_3
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    .line 8
    sget-object v2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EDITOR TEMP DELETED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v0}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private static final P(Lcom/tangxiaolv/telegramgallery/GalleryActivity;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->O(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final U()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GALLERY_CONFIG"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance v7, Lcom/tangxiaolv/telegramgallery/m;

    .line 4
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->getFilterMimeTypes()[Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->getLimitPickPhoto()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->isSinglePhoto()Z

    move-result v4

    .line 7
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/GalleryConfig;->getHintOfPick()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/tangxiaolv/telegramgallery/m;-><init>([Ljava/lang/String;IZLjava/lang/String;Z)V

    iput-object v7, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->c:Lcom/tangxiaolv/telegramgallery/m;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->c:Lcom/tangxiaolv/telegramgallery/m;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->d:Lcom/tangxiaolv/telegramgallery/m$h;

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/m;->B0(Lcom/tangxiaolv/telegramgallery/m$h;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->c:Lcom/tangxiaolv/telegramgallery/m;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/f;ZZZ)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final R(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->N(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->e:Landroidx/activity/result/ActivityResultLauncher;

    .line 3
    sget-object v2, Lcom/tangxiaolv/telegramgallery/j;->a:Lcom/tangxiaolv/telegramgallery/j$a;

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tempFile.absolutePath"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, p0, p1, v0}, Lcom/tangxiaolv/telegramgallery/j$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-virtual {v1, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final S(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "video/mp4"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public d(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Z
    .locals 1
    .param p1    # Lcom/tangxiaolv/telegramgallery/Actionbar/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public l(Lcom/tangxiaolv/telegramgallery/Actionbar/f;ZZLcom/tangxiaolv/telegramgallery/Actionbar/b;)Z
    .locals 0
    .param p1    # Lcom/tangxiaolv/telegramgallery/Actionbar/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/tangxiaolv/telegramgallery/Actionbar/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "fragment"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layout"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/o;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/o;->t0(ZZ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->M()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/tangxiaolv/telegramgallery/q$l;->C:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/e;->a(Landroid/app/Application;)V

    .line 4
    sget p1, Lcom/tangxiaolv/telegramgallery/q$i;->L4:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    .line 5
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->I(Ljava/util/ArrayList;)V

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->setDelegate(Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;)V

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 11
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->U()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/o;->u0()V

    .line 2
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->H()V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->c:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->T()V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E()V

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->a:Ljava/util/ArrayList;

    .line 7
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    .line 8
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->c:Lcom/tangxiaolv/telegramgallery/m;

    .line 9
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->O()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->Q()V

    .line 3
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/o;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/o;->N0()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->U()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->R()V

    .line 3
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/o;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/o;->Q0()V

    :cond_0
    return-void
.end method

.method public s(Lcom/tangxiaolv/telegramgallery/Actionbar/f;Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Z
    .locals 1
    .param p1    # Lcom/tangxiaolv/telegramgallery/Actionbar/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/tangxiaolv/telegramgallery/Actionbar/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layout"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public t(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V
    .locals 1
    .param p1    # Lcom/tangxiaolv/telegramgallery/Actionbar/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public u()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/o;->J0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tangxiaolv/telegramgallery/o;->t0(ZZ)V

    return v2

    :cond_0
    return v1
.end method
