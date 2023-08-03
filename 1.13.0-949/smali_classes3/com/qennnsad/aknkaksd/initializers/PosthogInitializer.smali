.class public final Lcom/qennnsad/aknkaksd/initializers/PosthogInitializer;
.super Ljava/lang/Object;
.source "PosthogInitializer.kt"

# interfaces
.implements Landroidx/startup/Initializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/startup/Initializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00010\t0\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/initializers/PosthogInitializer;",
        "Landroidx/startup/Initializer;",
        "",
        "()V",
        "create",
        "context",
        "Landroid/content/Context;",
        "dependencies",
        "",
        "Ljava/lang/Class;",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "..."

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/posthog/android/PostHog$j;

    const-string v1, "phc_K1JCCmFUISJuJwzpoNpPmVKhXQyMbM1OQAABWS6YOWN"

    const-string v2, "https://metrics.telarycover.io"

    invoke-direct {v0, p1, v1, v2}, Lcom/posthog/android/PostHog$j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/posthog/android/PostHog$j;->o()Lcom/posthog/android/PostHog$j;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/posthog/android/PostHog$j;->d(Z)Lcom/posthog/android/PostHog$j;

    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/posthog/android/PostHog$j;->i(JLjava/util/concurrent/TimeUnit;)Lcom/posthog/android/PostHog$j;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/posthog/android/PostHog$j;->c()Lcom/posthog/android/PostHog$j;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/posthog/android/PostHog$LogLevel;->NONE:Lcom/posthog/android/PostHog$LogLevel;

    invoke-virtual {v0, v1}, Lcom/posthog/android/PostHog$j;->l(Lcom/posthog/android/PostHog$LogLevel;)Lcom/posthog/android/PostHog$j;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/posthog/android/PostHog$j;->a()Lcom/posthog/android/PostHog;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/posthog/android/PostHog;->R(Lcom/posthog/android/PostHog;)V

    .line 10
    invoke-static {p1}, Lcom/posthog/android/PostHog;->U(Landroid/content/Context;)Lcom/posthog/android/PostHog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/posthog/android/PostHog;->k()V

    .line 11
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1
.end method

.method public dependencies()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/qennnsad/aknkaksd/initializers/SentryInitializer;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
