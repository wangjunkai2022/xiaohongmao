.class public final synthetic Lio/sentry/q1;
.super Ljava/lang/Object;
.source "MeasurementUnit.java"


# direct methods
.method public static a(Lio/sentry/MeasurementUnit;)Ljava/lang/String;
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-interface {p0}, Lio/sentry/MeasurementUnit;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
