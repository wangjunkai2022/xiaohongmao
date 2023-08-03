.class public Lcom/posthog/android/n$b;
.super Ljava/lang/Object;
.source "PostHogActivityLifecycleCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/posthog/android/PostHog;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/posthog/android/n;
    .locals 9

    new-instance v8, Lcom/posthog/android/n;

    iget-object v1, p0, Lcom/posthog/android/n$b;->a:Lcom/posthog/android/PostHog;

    iget-object v2, p0, Lcom/posthog/android/n$b;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/posthog/android/n$b;->c:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/posthog/android/n$b;->d:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/posthog/android/n$b;->e:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/posthog/android/n$b;->f:Landroid/content/pm/PackageInfo;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/posthog/android/n;-><init>(Lcom/posthog/android/PostHog;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/pm/PackageInfo;Lcom/posthog/android/n$a;)V

    return-object v8
.end method

.method b(Ljava/lang/Boolean;)Lcom/posthog/android/n$b;
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/n$b;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method c(Landroid/content/pm/PackageInfo;)Lcom/posthog/android/n$b;
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/n$b;->f:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public d(Lcom/posthog/android/PostHog;)Lcom/posthog/android/n$b;
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/n$b;->a:Lcom/posthog/android/PostHog;

    return-object p0
.end method

.method e(Ljava/util/concurrent/ExecutorService;)Lcom/posthog/android/n$b;
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/n$b;->b:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method f(Ljava/lang/Boolean;)Lcom/posthog/android/n$b;
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/n$b;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method g(Ljava/lang/Boolean;)Lcom/posthog/android/n$b;
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/n$b;->e:Ljava/lang/Boolean;

    return-object p0
.end method
