.class public Lcom/posthog/android/s;
.super Lcom/posthog/android/x;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/android/s$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "anonymousId"

.field private static final c:Ljava/lang/String; = "distinctId"

.field private static final d:Ljava/lang/String; = "groups"

.field private static final e:Ljava/lang/String; = "$active_feature_flags"

.field private static final f:Ljava/lang/String; = "$feature/"


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

.method static u()Lcom/posthog/android/s;
    .locals 2

    .line 1
    new-instance v0, Lcom/posthog/android/s;

    new-instance v1, Lcom/posthog/android/internal/Utils$NullableConcurrentHashMap;

    invoke-direct {v1}, Lcom/posthog/android/internal/Utils$NullableConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/posthog/android/s;-><init>(Ljava/util/Map;)V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/posthog/android/s;->B(Ljava/lang/String;)Lcom/posthog/android/s;

    return-object v0
.end method


# virtual methods
.method A(Ljava/util/List;)Lcom/posthog/android/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/posthog/android/s;"
        }
    .end annotation

    const-string v0, "$active_feature_flags"

    invoke-virtual {p0, v0, p1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object p1

    return-object p1
.end method

.method B(Ljava/lang/String;)Lcom/posthog/android/s;
    .locals 1

    const-string v0, "anonymousId"

    invoke-virtual {p0, v0, p1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object p1

    return-object p1
.end method

.method C(Ljava/lang/String;)Lcom/posthog/android/s;
    .locals 1

    const-string v0, "distinctId"

    invoke-virtual {p0, v0, p1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object p1

    return-object p1
.end method

.method D(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "$feature/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object p1

    return-object p1
.end method

.method E(Lcom/posthog/android/x;)Lcom/posthog/android/s;
    .locals 1

    const-string v0, "groups"

    invoke-virtual {p0, v0, p1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object p1

    return-object p1
.end method

.method public F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/posthog/android/x;->o(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/x;

    return-object p0
.end method

.method public G()Lcom/posthog/android/s;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 2
    new-instance v1, Lcom/posthog/android/s;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/posthog/android/s;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic o(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/x;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p1, "$active_feature_flags"

    invoke-virtual {p0, p1}, Lcom/posthog/android/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public t()Ljava/lang/String;
    .locals 1

    const-string v0, "anonymousId"

    invoke-virtual {p0, v0}, Lcom/posthog/android/x;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/posthog/android/s;->w()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/posthog/android/s;->t()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    const-string v0, "distinctId"

    invoke-virtual {p0, v0}, Lcom/posthog/android/x;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "$feature/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/posthog/android/x;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public y()Lcom/posthog/android/x;
    .locals 1

    const-string v0, "groups"

    invoke-virtual {p0, v0}, Lcom/posthog/android/x;->l(Ljava/lang/Object;)Lcom/posthog/android/x;

    move-result-object v0

    return-object v0
.end method
