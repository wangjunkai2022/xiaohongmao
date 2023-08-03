.class public final synthetic Lcom/google/android/play/core/review/e;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/o;


# static fields
.field public static final synthetic a:Lcom/google/android/play/core/review/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/review/e;

    invoke-direct {v0}, Lcom/google/android/play/core/review/e;-><init>()V

    sput-object v0, Lcom/google/android/play/core/review/e;->a:Lcom/google/android/play/core/review/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/core/internal/c;->x(Landroid/os/IBinder;)Lcom/google/android/play/core/internal/d;

    move-result-object p1

    return-object p1
.end method
