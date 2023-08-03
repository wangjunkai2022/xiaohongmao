.class public Lcom/posthog/android/b$b;
.super Ljava/lang/Object;
.source "Cartographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/posthog/android/b;
    .locals 3

    new-instance v0, Lcom/posthog/android/b;

    iget-boolean v1, p0, Lcom/posthog/android/b$b;->a:Z

    iget-boolean v2, p0, Lcom/posthog/android/b$b;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/posthog/android/b;-><init>(ZZ)V

    return-object v0
.end method

.method public b(Z)Lcom/posthog/android/b$b;
    .locals 0

    iput-boolean p1, p0, Lcom/posthog/android/b$b;->a:Z

    return-object p0
.end method

.method public c(Z)Lcom/posthog/android/b$b;
    .locals 0

    iput-boolean p1, p0, Lcom/posthog/android/b$b;->b:Z

    return-object p0
.end method
