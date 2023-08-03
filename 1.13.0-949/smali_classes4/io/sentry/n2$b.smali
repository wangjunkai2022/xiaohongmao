.class public final Lio/sentry/n2$b;
.super Ljava/lang/Object;
.source "ProfilingTransactionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "id"

.field public static final b:Ljava/lang/String; = "trace_id"

.field public static final c:Ljava/lang/String; = "name"

.field public static final d:Ljava/lang/String; = "relative_start_ns"

.field public static final e:Ljava/lang/String; = "relative_end_ns"

.field public static final f:Ljava/lang/String; = "relative_cpu_start_ms"

.field public static final g:Ljava/lang/String; = "relative_cpu_end_ms"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
