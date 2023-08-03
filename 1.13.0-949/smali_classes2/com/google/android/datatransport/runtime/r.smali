.class final Lcom/google/android/datatransport/runtime/r;
.super Ljava/lang/Object;
.source "TransportImpl.java"

# interfaces
.implements Lcom/google/android/datatransport/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/o;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/datatransport/c;

.field private final d:Lcom/google/android/datatransport/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/f<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/datatransport/runtime/s;


# direct methods
.method constructor <init>(Lcom/google/android/datatransport/runtime/o;Ljava/lang/String;Lcom/google/android/datatransport/c;Lcom/google/android/datatransport/f;Lcom/google/android/datatransport/runtime/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/o;",
            "Ljava/lang/String;",
            "Lcom/google/android/datatransport/c;",
            "Lcom/google/android/datatransport/f<",
            "TT;[B>;",
            "Lcom/google/android/datatransport/runtime/s;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/r;->a:Lcom/google/android/datatransport/runtime/o;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/r;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/r;->c:Lcom/google/android/datatransport/c;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/r;->d:Lcom/google/android/datatransport/f;

    .line 6
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/r;->e:Lcom/google/android/datatransport/runtime/s;

    return-void
.end method

.method static synthetic c(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/datatransport/d;Lcom/google/android/datatransport/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/d<",
            "TT;>;",
            "Lcom/google/android/datatransport/i;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/r;->e:Lcom/google/android/datatransport/runtime/s;

    .line 2
    invoke-static {}, Lcom/google/android/datatransport/runtime/n;->a()Lcom/google/android/datatransport/runtime/n$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/r;->a:Lcom/google/android/datatransport/runtime/o;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/n$a;->f(Lcom/google/android/datatransport/runtime/o;)Lcom/google/android/datatransport/runtime/n$a;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/runtime/n$a;->c(Lcom/google/android/datatransport/d;)Lcom/google/android/datatransport/runtime/n$a;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/r;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/n$a;->g(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/n$a;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/r;->d:Lcom/google/android/datatransport/f;

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/n$a;->e(Lcom/google/android/datatransport/f;)Lcom/google/android/datatransport/runtime/n$a;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/r;->c:Lcom/google/android/datatransport/c;

    .line 7
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/n$a;->b(Lcom/google/android/datatransport/c;)Lcom/google/android/datatransport/runtime/n$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n$a;->a()Lcom/google/android/datatransport/runtime/n;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1, p2}, Lcom/google/android/datatransport/runtime/s;->a(Lcom/google/android/datatransport/runtime/n;Lcom/google/android/datatransport/i;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/datatransport/runtime/q;->b()Lcom/google/android/datatransport/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/datatransport/runtime/r;->a(Lcom/google/android/datatransport/d;Lcom/google/android/datatransport/i;)V

    return-void
.end method
