.class public final Lcom/google/android/exoplayer2/scheduler/a;
.super Ljava/lang/Object;
.source "PlatformScheduler.java"

# interfaces
.implements Lcom/google/android/exoplayer2/scheduler/e;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/scheduler/a$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "PlatformScheduler"

.field private static final e:Ljava/lang/String; = "service_action"

.field private static final f:Ljava/lang/String; = "service_package"

.field private static final g:Ljava/lang/String; = "requirements"

.field private static final h:I


# instance fields
.field private final a:I

.field private final b:Landroid/content/ComponentName;

.field private final c:Landroid/app/job/JobScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0xf

    sput v0, Lcom/google/android/exoplayer2/scheduler/a;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.RECEIVE_BOOT_COMPLETED"
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/scheduler/a;->a:I

    .line 4
    new-instance p2, Landroid/content/ComponentName;

    const-class v0, Lcom/google/android/exoplayer2/scheduler/a$a;

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/scheduler/a;->b:Landroid/content/ComponentName;

    const-string p2, "jobscheduler"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    iput-object p1, p0, Lcom/google/android/exoplayer2/scheduler/a;->c:Landroid/app/job/JobScheduler;

    return-void
.end method

.method private static c(ILandroid/content/ComponentName;Lcom/google/android/exoplayer2/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Landroid/app/job/JobInfo;
    .locals 3

    .line 1
    sget v0, Lcom/google/android/exoplayer2/scheduler/a;->h:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->filterRequirements(I)Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->getRequirements()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/scheduler/Requirements;->getRequirements()I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring unsupported requirements: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformScheduler"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 6
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isUnmeteredNetworkRequired()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    .line 7
    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isNetworkRequired()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isIdleRequired()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isChargingRequired()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 12
    sget p0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v1, 0x1a

    if-lt p0, v1, :cond_3

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isStorageNotLowRequired()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {v0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 14
    :cond_3
    invoke-virtual {v0, p1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 15
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    const-string p1, "service_action"

    .line 16
    invoke-virtual {p0, p1, p3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "service_package"

    .line 17
    invoke-virtual {p0, p1, p4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/scheduler/Requirements;->getRequirements()I

    move-result p1

    const-string p2, "requirements"

    invoke-virtual {p0, p2, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    invoke-virtual {v0, p0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 20
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/scheduler/a;->b:Landroid/content/ComponentName;

    .line 2
    invoke-static {v0, v1, p1, p3, p2}, Lcom/google/android/exoplayer2/scheduler/a;->c(ILandroid/content/ComponentName;Lcom/google/android/exoplayer2/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Landroid/app/job/JobInfo;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/scheduler/a;->c:Landroid/app/job/JobScheduler;

    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public b(Lcom/google/android/exoplayer2/scheduler/Requirements;)Lcom/google/android/exoplayer2/scheduler/Requirements;
    .locals 1

    sget v0, Lcom/google/android/exoplayer2/scheduler/a;->h:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->filterRequirements(I)Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object p1

    return-object p1
.end method

.method public cancel()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/a;->c:Landroid/app/job/JobScheduler;

    iget v1, p0, Lcom/google/android/exoplayer2/scheduler/a;->a:I

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    const/4 v0, 0x1

    return v0
.end method
