.class Lcom/posthog/android/m$a;
.super Lcom/posthog/android/x$a;
.source "Persistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/posthog/android/x$a<",
        "Lcom/posthog/android/m;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/posthog/android/b;Ljava/lang/String;)V
    .locals 6

    const-class v5, Lcom/posthog/android/m;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/posthog/android/x$a;-><init>(Landroid/content/Context;Lcom/posthog/android/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)Lcom/posthog/android/x;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/posthog/android/m$a;->f(Ljava/util/Map;)Lcom/posthog/android/m;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/util/Map;)Lcom/posthog/android/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/posthog/android/m;"
        }
    .end annotation

    new-instance v0, Lcom/posthog/android/m;

    new-instance v1, Lcom/posthog/android/internal/Utils$NullableConcurrentHashMap;

    invoke-direct {v1, p1}, Lcom/posthog/android/internal/Utils$NullableConcurrentHashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/posthog/android/m;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
