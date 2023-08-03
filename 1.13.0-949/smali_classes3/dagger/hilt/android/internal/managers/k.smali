.class public final Ldagger/hilt/android/internal/managers/k;
.super Ljava/lang/Object;
.source "ServiceComponentManager.java"

# interfaces
.implements Lq6/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/hilt/android/internal/managers/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Service;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldagger/hilt/android/internal/managers/k;->a:Landroid/app/Service;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/k;->a:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lq6/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Hilt service must be attached to an @AndroidEntryPoint Application. Found: %s"

    .line 4
    invoke-static {v1, v3, v2}, Lq6/f;->d(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    const-class v1, Ldagger/hilt/android/internal/managers/k$a;

    invoke-static {v0, v1}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/hilt/android/internal/managers/k$a;

    .line 6
    invoke-interface {v0}, Ldagger/hilt/android/internal/managers/k$a;->a()Lh6/d;

    move-result-object v0

    iget-object v1, p0, Ldagger/hilt/android/internal/managers/k;->a:Landroid/app/Service;

    .line 7
    invoke-interface {v0, v1}, Lh6/d;->a(Landroid/app/Service;)Lh6/d;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Lh6/d;->build()Lf6/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/k;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Ldagger/hilt/android/internal/managers/k;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldagger/hilt/android/internal/managers/k;->b:Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/k;->b:Ljava/lang/Object;

    return-object v0
.end method
