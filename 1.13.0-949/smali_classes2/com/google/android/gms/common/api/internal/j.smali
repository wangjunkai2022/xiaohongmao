.class public final Lcom/google/android/gms/common/api/internal/j;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lu2/a;
.end annotation


# static fields
.field private static final e:Ljava/lang/Object;

.field private static f:Lcom/google/android/gms/common/api/internal/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ls7/a;
        value = "sLock"
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/common/api/Status;

.field private final c:Z

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/j;->e:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation build Lu2/a;
    .end annotation

    .annotation build Ly2/d0;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    sget v1, Lcom/google/android/gms/common/m$b;->a:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_app_measurement_enable"

    const-string v3, "integer"

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/j;->d:Z

    goto :goto_2

    .line 6
    :cond_2
    iput-boolean v3, p0, Lcom/google/android/gms/common/api/internal/j;->d:Z

    .line 7
    :goto_2
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/j;->c:Z

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/l1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/common/internal/z;

    .line 9
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/z;-><init>(Landroid/content/Context;)V

    const-string p1, "google_app_id"

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "Missing google app id value from from string resources with name google_app_id."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/j;->b:Lcom/google/android/gms/common/api/Status;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/lang/String;

    return-void

    :cond_4
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/j;->b:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation build Lu2/a;
    .end annotation

    .annotation build Ly2/d0;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/j;->b:Lcom/google/android/gms/common/api/Status;

    iput-boolean p2, p0, Lcom/google/android/gms/common/api/internal/j;->c:Z

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/j;->d:Z

    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/j;
    .locals 4
    .annotation build Lu2/a;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/j;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/j;->f:Lcom/google/android/gms/common/api/internal/j;

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-object v1

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Initialize must be called before "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static c()V
    .locals 2
    .annotation build Lu2/a;
    .end annotation

    .annotation build Ly2/d0;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/api/internal/j;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/google/android/gms/common/api/internal/j;->f:Lcom/google/android/gms/common/api/internal/j;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "getGoogleAppId"

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/j;->b(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/j;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "Context must not be null."

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/common/api/internal/j;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/j;->f:Lcom/google/android/gms/common/api/internal/j;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/api/internal/j;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/api/internal/j;->f:Lcom/google/android/gms/common/api/internal/j;

    :cond_0
    sget-object p0, Lcom/google/android/gms/common/api/internal/j;->f:Lcom/google/android/gms/common/api/internal/j;

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/j;->b:Lcom/google/android/gms/common/api/Status;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/Status;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "Context must not be null."

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "App ID must be nonempty."

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/u;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    sget-object p0, Lcom/google/android/gms/common/api/internal/j;->e:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/j;->f:Lcom/google/android/gms/common/api/internal/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/j;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/j;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/j;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/j;->f:Lcom/google/android/gms/common/api/internal/j;

    .line 4
    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/j;->b:Lcom/google/android/gms/common/api/Status;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static g()Z
    .locals 2
    .annotation build Lu2/a;
    .end annotation

    const-string v0, "isMeasurementEnabled"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/j;->b(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/j;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/j;->b:Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/j;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static h()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    const-string v0, "isMeasurementExplicitlyDisabled"

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/j;->b(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/j;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/j;->d:Z

    return v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 3
    .annotation build Lu2/a;
    .end annotation

    .annotation build Ly2/d0;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x61

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Initialize was called with two different Google App IDs.  Only the first app ID will be used: \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    return-object p1
.end method
