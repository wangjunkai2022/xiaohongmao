.class public Lcom/posthog/android/m;
.super Lcom/posthog/android/x;
.source "Persistence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/android/m$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "$enabled_feature_flags"

.field public static final c:Ljava/lang/String; = "$groups"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/x;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/posthog/android/x;-><init>(I)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/posthog/android/x;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static s()Lcom/posthog/android/m;
    .locals 1

    new-instance v0, Lcom/posthog/android/m;

    invoke-direct {v0}, Lcom/posthog/android/m;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic o(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/x;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/posthog/android/m;->x(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/m;

    move-result-object p1

    return-object p1
.end method

.method public t()Lcom/posthog/android/x;
    .locals 1

    const-string v0, "$enabled_feature_flags"

    invoke-virtual {p0, v0}, Lcom/posthog/android/x;->l(Ljava/lang/Object;)Lcom/posthog/android/x;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/posthog/android/x;
    .locals 1

    const-string v0, "$groups"

    invoke-virtual {p0, v0}, Lcom/posthog/android/x;->l(Ljava/lang/Object;)Lcom/posthog/android/x;

    move-result-object v0

    return-object v0
.end method

.method v(Ljava/util/Map;)Lcom/posthog/android/m;
    .locals 1

    const-string v0, "$enabled_feature_flags"

    invoke-virtual {p0, v0, p1}, Lcom/posthog/android/m;->x(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/m;

    move-result-object p1

    return-object p1
.end method

.method w(Ljava/util/Map;)Lcom/posthog/android/m;
    .locals 1

    const-string v0, "$groups"

    invoke-virtual {p0, v0, p1}, Lcom/posthog/android/m;->x(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/m;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/m;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/posthog/android/x;->o(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/x;

    return-object p0
.end method

.method public y()Lcom/posthog/android/m;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 2
    new-instance v1, Lcom/posthog/android/m;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/posthog/android/m;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
