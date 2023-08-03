.class public abstract Lcom/google/android/datatransport/runtime/dagger/internal/a$a;
.super Ljava/lang/Object;
.source "AbstractMapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/dagger/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;",
            "Lu7/c<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/d;->d(I)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/a$a;->a:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;Lu7/c;)Lcom/google/android/datatransport/runtime/dagger/internal/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lu7/c<",
            "TV;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/a$a<",
            "TK;TV;TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/a$a;->a:Ljava/util/LinkedHashMap;

    const-string v1, "key"

    invoke-static {p1, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "provider"

    invoke-static {p2, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method b(Lu7/c;)Lcom/google/android/datatransport/runtime/dagger/internal/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Ljava/util/Map<",
            "TK;TV2;>;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/a$a<",
            "TK;TV;TV2;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/datatransport/runtime/dagger/internal/e;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/datatransport/runtime/dagger/internal/e;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/e;->a()Lu7/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/a$a;->b(Lu7/c;)Lcom/google/android/datatransport/runtime/dagger/internal/a$a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    check-cast p1, Lcom/google/android/datatransport/runtime/dagger/internal/a;

    .line 5
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/a$a;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/a;->a(Lcom/google/android/datatransport/runtime/dagger/internal/a;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-object p0
.end method
