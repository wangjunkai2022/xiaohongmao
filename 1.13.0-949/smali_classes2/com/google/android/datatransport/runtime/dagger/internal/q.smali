.class public final Lcom/google/android/datatransport/runtime/dagger/internal/q;
.super Ljava/lang/Object;
.source "ProviderOfLazy.java"

# interfaces
.implements Lu7/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lu7/c<",
        "Lk2/e<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic b:Z


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/q;->a:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;)Lu7/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu7/c<",
            "TT;>;)",
            "Lu7/c<",
            "Lk2/e<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/q;

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu7/c;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/q;-><init>(Lu7/c;)V

    return-object v0
.end method


# virtual methods
.method public b()Lk2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk2/e<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/q;->a:Lu7/c;

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/f;->a(Lu7/c;)Lk2/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/q;->b()Lk2/e;

    move-result-object v0

    return-object v0
.end method
