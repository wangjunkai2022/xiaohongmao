.class public final Lio/sentry/m5$c;
.super Ljava/lang/Object;
.source "TraceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/m5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "trace_id"

.field public static final b:Ljava/lang/String; = "public_key"

.field public static final c:Ljava/lang/String; = "release"

.field public static final d:Ljava/lang/String; = "environment"

.field public static final e:Ljava/lang/String; = "user"

.field public static final f:Ljava/lang/String; = "user_id"

.field public static final g:Ljava/lang/String; = "user_segment"

.field public static final h:Ljava/lang/String; = "transaction"

.field public static final i:Ljava/lang/String; = "sample_rate"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
