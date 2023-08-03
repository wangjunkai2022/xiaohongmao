.class public final Ldagger/internal/n;
.super Ldagger/internal/a;
.source "MapProviderFactory.java"

# interfaces
.implements Ld6/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldagger/internal/a<",
        "TK;TV;",
        "Lu7/c<",
        "TV;>;>;",
        "Ld6/e<",
        "Ljava/util/Map<",
        "TK;",
        "Lu7/c<",
        "TV;>;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Lu7/c<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Ldagger/internal/a;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ldagger/internal/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ldagger/internal/n;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static c(I)Ldagger/internal/n$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ldagger/internal/n$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ldagger/internal/n$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldagger/internal/n$b;-><init>(ILdagger/internal/n$a;)V

    return-object v0
.end method


# virtual methods
.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lu7/c<",
            "TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ldagger/internal/a;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldagger/internal/n;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
