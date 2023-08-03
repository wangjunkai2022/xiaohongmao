.class public final Lcom/google/android/gms/common/internal/service/p;
.super Lcom/google/android/gms/common/api/h;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/h<",
        "Lcom/google/android/gms/common/internal/c0;",
        ">;",
        "Lcom/google/android/gms/common/internal/b0;"
    }
.end annotation


# static fields
.field private static final k:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/common/internal/service/q;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/common/internal/service/q;",
            "Lcom/google/android/gms/common/internal/c0;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/common/internal/c0;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic n:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/service/p;->k:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lcom/google/android/gms/common/internal/service/o;

    invoke-direct {v1}, Lcom/google/android/gms/common/internal/service/o;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/internal/service/p;->l:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lcom/google/android/gms/common/internal/service/p;->m:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/internal/c0;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/internal/service/p;->m:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/h$a;->c:Lcom/google/android/gms/common/api/h$a;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/h;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/h$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/TelemetryData;",
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/a0;->a()Lcom/google/android/gms/common/api/internal/a0$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    sget-object v2, Lcom/google/android/gms/internal/base/d;->a:Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/a0$a;->e([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/a0$a;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/a0$a;->d(Z)Lcom/google/android/gms/common/api/internal/a0$a;

    new-instance v1, Lcom/google/android/gms/common/internal/service/n;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/service/n;-><init>(Lcom/google/android/gms/common/internal/TelemetryData;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/a0$a;->c(Lcom/google/android/gms/common/api/internal/v;)Lcom/google/android/gms/common/api/internal/a0$a;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/a0$a;->a()Lcom/google/android/gms/common/api/internal/a0;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/h;->g(Lcom/google/android/gms/common/api/internal/a0;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method
