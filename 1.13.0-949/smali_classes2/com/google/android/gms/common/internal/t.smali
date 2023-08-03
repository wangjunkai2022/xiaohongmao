.class public Lcom/google/android/gms/common/internal/t;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/t$a;
    }
.end annotation

.annotation build Lu2/a;
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/v0;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/v0;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/t;->a:Lcom/google/android/gms/common/internal/z0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/p;)Lcom/google/android/gms/tasks/k;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/common/api/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/q;",
            "T:",
            "Lcom/google/android/gms/common/api/p<",
            "TR;>;>(",
            "Lcom/google/android/gms/common/api/l<",
            "TR;>;TT;)",
            "Lcom/google/android/gms/tasks/k<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/x0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/x0;-><init>(Lcom/google/android/gms/common/api/p;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/t;->b(Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/internal/t$a;)Lcom/google/android/gms/tasks/k;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/internal/t$a;)Lcom/google/android/gms/tasks/k;
    .locals 3
    .param p0    # Lcom/google/android/gms/common/api/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/common/internal/t$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/q;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/l<",
            "TR;>;",
            "Lcom/google/android/gms/common/internal/t$a<",
            "TR;TT;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/t;->a:Lcom/google/android/gms/common/internal/z0;

    new-instance v1, Lcom/google/android/gms/tasks/l;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/l;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/internal/w0;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/common/internal/w0;-><init>(Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/tasks/l;Lcom/google/android/gms/common/internal/t$a;Lcom/google/android/gms/common/internal/z0;)V

    .line 2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/l;->c(Lcom/google/android/gms/common/api/l$a;)V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/l;->a()Lcom/google/android/gms/tasks/k;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/tasks/k;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/q;",
            ">(",
            "Lcom/google/android/gms/common/api/l<",
            "TR;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/y0;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/y0;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/t;->b(Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/internal/t$a;)Lcom/google/android/gms/tasks/k;

    move-result-object p0

    return-object p0
.end method
