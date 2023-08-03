.class final Lcom/google/android/play/core/appupdate/u;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final e:Lcom/google/android/play/core/internal/h;

.field private static final f:Landroid/content/Intent;


# instance fields
.field a:Lcom/google/android/play/core/internal/t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/play/core/appupdate/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "AppUpdateService"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/appupdate/u;->e:Lcom/google/android/play/core/internal/h;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.install.BIND_UPDATE_SERVICE"

    .line 2
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/appupdate/u;->f:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/appupdate/w;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/u;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/u;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/u;->d:Lcom/google/android/play/core/appupdate/w;

    .line 2
    invoke-static {p1}, Lcom/google/android/play/core/internal/h1;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lcom/google/android/play/core/internal/t;

    .line 4
    invoke-static {p1}, Lcom/google/android/play/core/internal/e1;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/play/core/appupdate/u;->e:Lcom/google/android/play/core/internal/h;

    sget-object v4, Lcom/google/android/play/core/appupdate/u;->f:Landroid/content/Intent;

    sget-object v5, Lcom/google/android/play/core/appupdate/o;->a:Lcom/google/android/play/core/appupdate/o;

    const/4 v6, 0x0

    const-string v3, "AppUpdateService"

    move-object v0, p2

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/internal/t;-><init>(Landroid/content/Context;Lcom/google/android/play/core/internal/h;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/internal/o;Lcom/google/android/play/core/internal/n;)V

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/u;->a:Lcom/google/android/play/core/internal/t;

    :cond_0
    return-void
.end method

.method static bridge synthetic a(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "error.code"

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic b(Lcom/google/android/play/core/appupdate/u;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/play/core/appupdate/u;->i()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v1, "package.name"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/u;->c:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/u;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 7
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    sget-object p0, Lcom/google/android/play/core/appupdate/u;->e:Lcom/google/android/play/core/internal/h;

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "The current version of the app could not be retrieved"

    .line 9
    invoke-virtual {p0, v1, p1}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "app.version.code"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method static bridge synthetic c()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/google/android/play/core/appupdate/u;->i()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic d(Lcom/google/android/play/core/appupdate/u;Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/play/core/appupdate/a;
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "version.code"

    const/4 v2, -0x1

    .line 1
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "update.availability"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "install.status"

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "client.version.staleness"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    move-object v7, v1

    const-string v1, "in.app.update.priority"

    .line 6
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v1, "bytes.downloaded"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v1, "total.bytes.to.download"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v1, "additional.size.required"

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/u;->d:Lcom/google/android/play/core/appupdate/w;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/w;->a()J

    move-result-wide v15

    const-string v1, "blocking.intent"

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/app/PendingIntent;

    const-string v1, "nonblocking.intent"

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/app/PendingIntent;

    const-string v1, "blocking.destructive.intent"

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/app/PendingIntent;

    const-string v1, "nonblocking.destructive.intent"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/app/PendingIntent;

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v20}, Lcom/google/android/play/core/appupdate/a;->l(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/google/android/play/core/appupdate/a;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic e()Lcom/google/android/play/core/internal/h;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/appupdate/u;->e:Lcom/google/android/play/core/internal/h;

    return-object v0
.end method

.method static bridge synthetic h(Lcom/google/android/play/core/appupdate/u;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/u;->b:Ljava/lang/String;

    return-object p0
.end method

.method private static i()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_update"

    .line 2
    invoke-static {v1}, Lcom/google/android/play/core/common/b;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v1, "playcore.version.code"

    const/16 v2, 0x2afb

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static j()Lcom/google/android/play/core/tasks/d;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/play/core/appupdate/u;->e:Lcom/google/android/play/core/internal/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, -0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "onError(%d)"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/install/InstallException;

    .line 2
    invoke-direct {v0, v2}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/play/core/tasks/f;->d(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final f(Ljava/lang/String;)Lcom/google/android/play/core/tasks/d;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/u;->a:Lcom/google/android/play/core/internal/t;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/play/core/appupdate/u;->j()Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/play/core/appupdate/u;->e:Lcom/google/android/play/core/internal/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "completeUpdate(%s)"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/tasks/o;

    .line 3
    invoke-direct {v0}, Lcom/google/android/play/core/tasks/o;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/u;->a:Lcom/google/android/play/core/internal/t;

    new-instance v2, Lcom/google/android/play/core/appupdate/q;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/play/core/appupdate/q;-><init>(Lcom/google/android/play/core/appupdate/u;Lcom/google/android/play/core/tasks/o;Lcom/google/android/play/core/tasks/o;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/android/play/core/internal/t;->q(Lcom/google/android/play/core/internal/i;Lcom/google/android/play/core/tasks/o;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/o;->a()Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/String;)Lcom/google/android/play/core/tasks/d;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/u;->a:Lcom/google/android/play/core/internal/t;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/play/core/appupdate/u;->j()Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/play/core/appupdate/u;->e:Lcom/google/android/play/core/internal/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "requestUpdateInfo(%s)"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/tasks/o;

    .line 3
    invoke-direct {v0}, Lcom/google/android/play/core/tasks/o;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/u;->a:Lcom/google/android/play/core/internal/t;

    new-instance v2, Lcom/google/android/play/core/appupdate/p;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/appupdate/p;-><init>(Lcom/google/android/play/core/appupdate/u;Lcom/google/android/play/core/tasks/o;Ljava/lang/String;Lcom/google/android/play/core/tasks/o;)V

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/android/play/core/internal/t;->q(Lcom/google/android/play/core/internal/i;Lcom/google/android/play/core/tasks/o;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/o;->a()Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method
