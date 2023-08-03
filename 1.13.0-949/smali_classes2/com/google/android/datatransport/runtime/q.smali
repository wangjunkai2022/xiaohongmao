.class final synthetic Lcom/google/android/datatransport/runtime/q;
.super Ljava/lang/Object;
.source "TransportImpl.java"

# interfaces
.implements Lcom/google/android/datatransport/i;


# static fields
.field private static final a:Lcom/google/android/datatransport/runtime/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/q;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/q;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/q;->a:Lcom/google/android/datatransport/runtime/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/datatransport/i;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/runtime/q;->a:Lcom/google/android/datatransport/runtime/q;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/r;->c(Ljava/lang/Exception;)V

    return-void
.end method
