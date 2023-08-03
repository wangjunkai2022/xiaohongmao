.class public Lcom/yalantis/ucrop/d;
.super Ljava/lang/Object;
.source "UCrop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/d$a;
    }
.end annotation


# static fields
.field public static final c:I = 0x45

.field public static final d:I = 0x60

.field public static final e:I = 0xa

.field private static final f:Ljava/lang/String; = "com.yalantis.ucrop"

.field public static final g:Ljava/lang/String; = "com.yalantis.ucrop.InputUri"

.field public static final h:Ljava/lang/String; = "com.yalantis.ucrop.OutputUri"

.field public static final i:Ljava/lang/String; = "com.yalantis.ucrop.CropAspectRatio"

.field public static final j:Ljava/lang/String; = "com.yalantis.ucrop.ImageWidth"

.field public static final k:Ljava/lang/String; = "com.yalantis.ucrop.ImageHeight"

.field public static final l:Ljava/lang/String; = "com.yalantis.ucrop.OffsetX"

.field public static final m:Ljava/lang/String; = "com.yalantis.ucrop.OffsetY"

.field public static final n:Ljava/lang/String; = "com.yalantis.ucrop.Error"

.field public static final o:Ljava/lang/String; = "com.yalantis.ucrop.AspectRatioX"

.field public static final p:Ljava/lang/String; = "com.yalantis.ucrop.AspectRatioY"

.field public static final q:Ljava/lang/String; = "com.yalantis.ucrop.MaxSizeX"

.field public static final r:Ljava/lang/String; = "com.yalantis.ucrop.MaxSizeY"


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/d;->a:Landroid/content/Intent;

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/d;->b:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.InputUri"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    iget-object p1, p0, Lcom/yalantis/ucrop/d;->b:Landroid/os/Bundle;

    const-string v0, "com.yalantis.ucrop.OutputUri"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/Throwable;
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "com.yalantis.ucrop.Error"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public static e(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "com.yalantis.ucrop.OutputUri"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public static f(Landroid/content/Intent;)F
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "com.yalantis.ucrop.CropAspectRatio"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Intent;)I
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "com.yalantis.ucrop.ImageHeight"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Intent;)I
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "com.yalantis.ucrop.ImageWidth"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static i(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/d;
    .locals 1
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/yalantis/ucrop/d;

    invoke-direct {v0, p0, p1}, Lcom/yalantis/ucrop/d;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/yalantis/ucrop/e;
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/d;->b:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/yalantis/ucrop/e;->k0(Landroid/os/Bundle;)Lcom/yalantis/ucrop/e;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/os/Bundle;)Lcom/yalantis/ucrop/e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/d;->b:Landroid/os/Bundle;

    .line 2
    invoke-virtual {p0}, Lcom/yalantis/ucrop/d;->b()Lcom/yalantis/ucrop/e;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/d;->a:Landroid/content/Intent;

    const-class v1, Lcom/yalantis/ucrop/UCropActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/d;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/yalantis/ucrop/d;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3
    iget-object p1, p0, Lcom/yalantis/ucrop/d;->a:Landroid/content/Intent;

    return-object p1
.end method

.method public j(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x45

    invoke-virtual {p0, p1, v0}, Lcom/yalantis/ucrop/d;->k(Landroid/app/Activity;I)V

    return-void
.end method

.method public k(Landroid/app/Activity;I)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/d;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public l(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x45

    invoke-virtual {p0, p1, p2, v0}, Lcom/yalantis/ucrop/d;->m(Landroid/content/Context;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public m(Landroid/content/Context;Landroidx/fragment/app/Fragment;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/d;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public n()Lcom/yalantis/ucrop/d;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/d;->b:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.AspectRatioX"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/d;->b:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.AspectRatioY"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public o(FF)Lcom/yalantis/ucrop/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/d;->b:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.AspectRatioX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/d;->b:Landroid/os/Bundle;

    const-string v0, "com.yalantis.ucrop.AspectRatioY"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public p(II)Lcom/yalantis/ucrop/d;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0xaL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0xaL
        .end annotation
    .end param

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/16 p1, 0xa

    :cond_0
    if-ge p2, v0, :cond_1

    const/16 p2, 0xa

    .line 1
    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/d;->b:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.MaxSizeX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/d;->b:Landroid/os/Bundle;

    const-string v0, "com.yalantis.ucrop.MaxSizeY"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public q(Lcom/yalantis/ucrop/d$a;)Lcom/yalantis/ucrop/d;
    .locals 1
    .param p1    # Lcom/yalantis/ucrop/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/d;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/d$a;->a()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method
