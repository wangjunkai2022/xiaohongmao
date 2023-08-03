.class public final Ldagger/internal/n$b;
.super Ldagger/internal/a$a;
.source "MapProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldagger/internal/a$a<",
        "TK;TV;",
        "Lu7/c<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ldagger/internal/a$a;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(ILdagger/internal/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ldagger/internal/n$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lu7/c;)Ldagger/internal/a$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ldagger/internal/n$b;->d(Ljava/lang/Object;Lu7/c;)Ldagger/internal/n$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lu7/c;)Ldagger/internal/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Ldagger/internal/n$b;->e(Lu7/c;)Ldagger/internal/n$b;

    move-result-object p1

    return-object p1
.end method

.method public c()Ldagger/internal/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/internal/n<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ldagger/internal/n;

    iget-object v1, p0, Ldagger/internal/a$a;->a:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldagger/internal/n;-><init>(Ljava/util/Map;Ldagger/internal/n$a;)V

    return-object v0
.end method

.method public d(Ljava/lang/Object;Lu7/c;)Ldagger/internal/n$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lu7/c<",
            "TV;>;)",
            "Ldagger/internal/n$b<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ldagger/internal/a$a;->a(Ljava/lang/Object;Lu7/c;)Ldagger/internal/a$a;

    return-object p0
.end method

.method public e(Lu7/c;)Ldagger/internal/n$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Ljava/util/Map<",
            "TK;",
            "Lu7/c<",
            "TV;>;>;>;)",
            "Ldagger/internal/n$b<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Ldagger/internal/a$a;->b(Lu7/c;)Ldagger/internal/a$a;

    return-object p0
.end method
