.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final FONTSIZE_HUGE:I = 0x6

.field public static final FONTSIZE_LARGE:I = 0x4

.field public static final FONTSIZE_LARGEST:I = 0x5

.field public static final FONTSIZE_NORMAL:I = 0x3

.field public static final FONTSIZE_SMALL:I = 0x2

.field public static final FONTSIZE_SMALLEST:I = 0x1

.field public static final FONTSIZE_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SKIN_UNDEFINED:Ljava/lang/String; = "default"

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I


# instance fields
.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public fontScale:F

.field public fontsize:I

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public seq:I

.field public skin:Ljava/lang/String;

.field public smallestScreenWidthDp:I

.field public textLayoutDirection:I

.field public themeChanged:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 891
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 318
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 319
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 320
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 325
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 326
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 327
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 905
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 906
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 907
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static needNewResources(II)Z
    .locals 2
    .parameter "configChanges"
    .parameter "interestingChanges"

    .prologue
    .line 775
    const/high16 v0, 0x4000

    or-int/2addr v0, p1

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 7
    .parameter "that"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 911
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 912
    .local v0, a:F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 913
    .local v1, b:F
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1

    move v2, v3

    .line 963
    :cond_0
    :goto_0
    return v2

    .line 914
    :cond_1
    cmpl-float v5, v0, v1

    if-lez v5, :cond_2

    move v2, v4

    goto :goto_0

    .line 915
    :cond_2
    iget v5, p0, Landroid/content/res/Configuration;->mcc:I

    iget v6, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int v2, v5, v6

    .line 916
    .local v2, n:I
    if-nez v2, :cond_0

    .line 917
    iget v5, p0, Landroid/content/res/Configuration;->mnc:I

    iget v6, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int v2, v5, v6

    .line 918
    if-nez v2, :cond_0

    .line 919
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v5, :cond_3

    .line 920
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_5

    move v2, v4

    goto :goto_0

    .line 921
    :cond_3
    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v4, :cond_4

    move v2, v3

    .line 922
    goto :goto_0

    .line 924
    :cond_4
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 925
    if-nez v2, :cond_0

    .line 926
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 927
    if-nez v2, :cond_0

    .line 928
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 929
    if-nez v2, :cond_0

    .line 931
    :cond_5
    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int v2, v3, v4

    iget v3, p0, Landroid/content/res/Configuration;->themeChanged:I

    iget v4, p1, Landroid/content/res/Configuration;->themeChanged:I

    sub-int v2, v3, v4

    if-eqz v2, :cond_0


    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .locals 3
    .parameter "delta"

    .prologue
    .line 663
    const/4 v0, 0x0

    .line 664
    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 665
    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 667
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1

    .line 668
    or-int/lit8 v0, v0, 0x1

    .line 670
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2

    .line 671
    or-int/lit8 v0, v0, 0x2

    .line 673
    :cond_2
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 675
    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 677
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_5

    .line 679
    or-int/lit8 v0, v0, 0x8

    .line 681
    :cond_5
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_6

    .line 683
    or-int/lit8 v0, v0, 0x10

    .line 685
    :cond_6
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_7

    .line 687
    or-int/lit8 v0, v0, 0x20

    .line 689
    :cond_7
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_8

    .line 691
    or-int/lit8 v0, v0, 0x20

    .line 693
    :cond_8
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_9

    .line 695
    or-int/lit8 v0, v0, 0x40

    .line 697
    :cond_9
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_a

    .line 699
    or-int/lit8 v0, v0, 0x20

    .line 701
    :cond_a
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_b

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_b

    .line 703
    or-int/lit16 v0, v0, 0x80

    .line 705
    :cond_b
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eq v1, v2, :cond_c

    .line 707
    or-int/lit16 v0, v0, 0x100

    .line 709
    :cond_c
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_d

    .line 711
    or-int/lit16 v0, v0, 0x200

    .line 713
    :cond_d
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_e

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_e

    .line 715
    or-int/lit16 v0, v0, 0x400

    .line 717
    :cond_e
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_f

    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_f

    .line 719
    or-int/lit16 v0, v0, 0x400

    .line 721
    :cond_f
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_10

    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_10

    .line 723
    or-int/lit16 v0, v0, 0x800

    .line 727
    :cond_10
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;->multiTheme_dealThemeChange2(Landroid/content/res/Configuration;)I

    move-result v1

    or-int/2addr v0, v1

    .line 730
    return v0
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .locals 3
    .parameter "that"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 967
    if-nez p1, :cond_1

    move v0, v1

    .line 969
    :cond_0
    :goto_0
    return v0

    .line 968
    :cond_1
    if-eq p1, p0, :cond_0

    .line 969
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "that"

    .prologue
    .line 974
    :try_start_0
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 977
    :goto_0
    return v0

    .line 975
    :catch_0
    move-exception v0

    .line 977
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 981
    const/16 v0, 0x11

    .line 982
    .local v0, result:I
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 983
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    add-int v0, v1, v3

    .line 984
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    add-int v0, v1, v3

    .line 985
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 986
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int v0, v1, v3

    .line 987
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int v0, v1, v3

    .line 988
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int v0, v1, v3

    .line 989
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int v0, v1, v3

    .line 990
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    add-int v0, v1, v3

    .line 991
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int v0, v1, v3

    .line 992
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    add-int v0, v1, v3

    .line 993
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int v0, v1, v3

    .line 994
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int v0, v1, v3

    .line 995
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int v0, v1, v3

    .line 996
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int v0, v1, v3

    .line 997
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int v0, v1, v3

    .line 999
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->fontsize:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->themeChanged:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->themeChanged:I

    add-int v0, v1, v2

    return v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public isLayoutSizeAtLeast(I)Z
    .locals 3
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 135
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v2, 0xf

    .line 136
    .local v0, cur:I
    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-lt v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 784
    if-nez p1, :cond_1

    move v1, v2

    .line 804
    :cond_0
    :goto_0
    return v1

    .line 788
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 793
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 798
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    iget v4, p0, Landroid/content/res/Configuration;->seq:I

    sub-int v0, v3, v4

    .line 799
    .local v0, diff:I
    const/high16 v3, 0x1

    if-le v0, v3, :cond_2

    move v1, v2

    .line 802
    goto :goto_0

    .line 804
    :cond_2
    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 524
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 864
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->textLayoutDirection:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 330
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 331
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 332
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 333
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget v0, p1, Landroid/content/res/Configuration;->textLayoutDirection:I

    iput v0, p0, Landroid/content/res/Configuration;->textLayoutDirection:I

    :cond_0
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    iget v0, p1, Landroid/content/res/Configuration;->themeChanged:I

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    return-void
.end method

.method public setToDefaults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    iput-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->textLayoutDirection:I

    iput v1, p0, Landroid/content/res/Configuration;->seq:I

        iput v1, p0, Landroid/content/res/Configuration;->themeChanged:I
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mcc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mnc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    iget v1, p0, Landroid/content/res/Configuration;->textLayoutDirection:I

    packed-switch v1, :pswitch_data_0

    const-string v1, " layoutdir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->textLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_2

    const-string v1, " sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_3

    const-string v1, " w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_4

    const-string v1, " h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_1

    const-string v1, " layoutSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_5
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_0

    const-string v1, " layoutLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_6
    :sswitch_0
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_2

    const-string v1, " orien="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_7
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_3

    const-string v1, " uimode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_8
    :pswitch_0
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_1

    const-string v1, " night="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_9
    :sswitch_1
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v1, :pswitch_data_4

    const-string v1, " touch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_a
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v1, :pswitch_data_5

    const-string v1, " keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_b
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v1, :pswitch_data_6

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_c
    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v1, :pswitch_data_7

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_d
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v1, :pswitch_data_8

    const-string v1, " nav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_e
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v1, :pswitch_data_9

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_f
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_0

    const-string v1, " s."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
     const-string v1, " themeChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const-string v1, " (no locale)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_1
    const-string v1, " rtl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_2
    const-string v1, " ?swdp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_3
    const-string v1, " ?wdp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_4
    const-string v1, " ?hdp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :pswitch_2
    const-string v1, " ?lsize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :pswitch_3
    const-string v1, " smll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :pswitch_4
    const-string v1, " nrml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :pswitch_5
    const-string v1, " lrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :pswitch_6
    const-string v1, " xlrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :sswitch_2
    const-string v1, " ?long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :sswitch_3
    const-string v1, " long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :pswitch_7
    const-string v1, " ?orien"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_8
    const-string v1, " land"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_9
    const-string v1, " port"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_a
    const-string v1, " ?uimode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :pswitch_b
    const-string v1, " desk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :pswitch_c
    const-string v1, " car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :pswitch_d
    const-string v1, " television"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :sswitch_4
    const-string v1, " ?night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :sswitch_5
    const-string v1, " night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :pswitch_e
    const-string v1, " ?touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :pswitch_f
    const-string v1, " -touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :pswitch_10
    const-string v1, " stylus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :pswitch_11
    const-string v1, " finger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :pswitch_12
    const-string v1, " ?keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :pswitch_13
    const-string v1, " -keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :pswitch_14
    const-string v1, " qwerty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :pswitch_15
    const-string v1, " 12key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :pswitch_16
    const-string v1, "/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :pswitch_17
    const-string v1, "/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :pswitch_18
    const-string v1, "/h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :pswitch_19
    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :pswitch_1a
    const-string v1, "/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_1b
    const-string v1, "/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_1c
    const-string v1, "/h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_1d
    const-string v1, " ?nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :pswitch_1e
    const-string v1, " -nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :pswitch_1f
    const-string v1, " dpad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :pswitch_20
    const-string v1, " tball"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :pswitch_21
    const-string v1, " wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :pswitch_22
    const-string v1, "/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    :pswitch_23
    const-string v1, "/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    :pswitch_24
    const-string v1, "/h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x10 -> :sswitch_0
        0x20 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x10 -> :sswitch_1
        0x20 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 3
    .parameter "delta"

    .prologue
    const/4 v0, 0x0

    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2

    or-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    :cond_2
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    or-int/lit8 v0, v0, 0x4

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1a

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    :goto_0
    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/util/LocaleUtil;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->textLayoutDirection:I

    :cond_4
    iget-boolean v1, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v1, :cond_5

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_6

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    or-int/lit8 v0, v0, 0x4

    :cond_6
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_7

    or-int/lit8 v0, v0, 0x8

    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_7
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_8

    or-int/lit8 v0, v0, 0x10

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    :cond_8
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_9

    or-int/lit8 v0, v0, 0x20

    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_9
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_a

    or-int/lit8 v0, v0, 0x20

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    :cond_a
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v1, :cond_b

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_b

    or-int/lit8 v0, v0, 0x40

    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    :cond_b
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_c

    or-int/lit8 v0, v0, 0x20

    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_c
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_d

    or-int/lit16 v0, v0, 0x80

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    :cond_d
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v1, :cond_e

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eq v1, v2, :cond_e

    or-int/lit16 v0, v0, 0x100

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_e
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v1, :cond_10

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_10

    or-int/lit16 v0, v0, 0x200

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_f

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x10

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_f
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_10

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x31

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_10
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_11

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_11

    or-int/lit16 v0, v0, 0x400

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_11
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_12

    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_12

    or-int/lit16 v0, v0, 0x400

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_12
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v1, :cond_13

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_13
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v1, :cond_14

    iget v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    :cond_14
    iget v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v1, :cond_15

    iget v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    :cond_15
    iget v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v1, :cond_16

    iget v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    :cond_16
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_17

    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    :cond_17
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;->multiTheme_dealThemeChange(Landroid/content/res/Configuration;)I

    move-result v1

    or-int/2addr v0, v1
    return v0

    :cond_1a
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->textLayoutDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    iget v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1
.end method

.method private multiTheme_dealThemeChange(Landroid/content/res/Configuration;)I
    .locals 3
    .parameter "delta"

    .prologue
    const/4 v0, 0x0

    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->themeChanged:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    iget v2, p1, Landroid/content/res/Configuration;->themeChanged:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->themeChanged:I

    iput v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    const/high16 v0, -0x8000

    :cond_0
    return v0
.end method

.method private multiTheme_dealThemeChange2(Landroid/content/res/Configuration;)I
    .locals 3
    .parameter "delta"

    .prologue
    const/4 v0, 0x0

    .local v0, changed:I
    iget v1, p1, Landroid/content/res/Configuration;->themeChanged:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    iget v2, p1, Landroid/content/res/Configuration;->themeChanged:I

    if-eq v1, v2, :cond_0

    const/high16 v0, -0x8000

    :cond_0
    return v0
.end method

.method public updateTheme()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 519
    return-void
.end method
