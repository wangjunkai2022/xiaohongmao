.class public final Lcom/google/android/datatransport/runtime/dagger/internal/l$b;
.super Lcom/google/android/datatransport/runtime/dagger/internal/a$a;
.source "MapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/dagger/internal/l;
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
        "Lcom/google/android/datatransport/runtime/dagger/internal/a$a<",
        "TK;TV;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/a$a;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/datatransport/runtime/dagger/internal/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/l$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lu7/c;)Lcom/google/android/datatransport/runtime/dagger/internal/a$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/runtime/dagger/internal/l$b;->d(Ljava/lang/Object;Lu7/c;)Lcom/google/android/datatransport/runtime/dagger/internal/l$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lu7/c;)Lcom/google/android/datatransport/runtime/dagger/internal/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/l$b;->e(Lu7/c;)Lcom/google/android/datatransport/runtime/dagger/internal/l$b;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/google/android/datatransport/runtime/dagger/internal/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/runtime/dagger/internal/l<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/l;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/a$a;->a:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/runtime/dagger/internal/l;-><init>(Ljava/util/Map;Lcom/google/android/datatransport/runtime/dagger/internal/l$a;)V

    return-object v0
.end method

.method public d(Ljava/lang/Object;Lu7/c;)Lcom/google/android/datatransport/runtime/dagger/internal/l$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lu7/c<",
            "TV;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/l$b<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/android/datatransport/runtime/dagger/internal/a$a;->a(Ljava/lang/Object;Lu7/c;)Lcom/google/android/datatransport/runtime/dagger/internal/a$a;

    return-object p0
.end method

.method public e(Lu7/c;)Lcom/google/android/datatransport/runtime/dagger/internal/l$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Ljava/util/Map<",
            "TK;TV;>;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/l$b<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/a$a;->b(Lu7/c;)Lcom/google/android/datatransport/runtime/dagger/internal/a$a;

    return-object p0
.end method
