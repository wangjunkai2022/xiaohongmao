.class public abstract Lcom/posthog/android/e;
.super Ljava/lang/Object;
.source "Crypto.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/posthog/android/e;
    .locals 1

    new-instance v0, Lcom/posthog/android/e$a;

    invoke-direct {v0}, Lcom/posthog/android/e$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/io/InputStream;)Ljava/io/InputStream;
.end method

.method public abstract b(Ljava/io/OutputStream;)Ljava/io/OutputStream;
.end method
