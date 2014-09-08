.class public Lcom/htc/app/FilePickerCore;
.super Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;
.source "FilePickerCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerCore$SdcardListener;,
        Lcom/htc/app/FilePickerCore$OnlineItemClickListener;,
        Lcom/htc/app/FilePickerCore$OfflineItemClickListener;,
        Lcom/htc/app/FilePickerCore$GridAdapter;,
        Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    }
.end annotation


# static fields
.field private static final DIALOG_LOADING_PROGRESS_ID:I = 0x8

.field private static final DIALOG_PROCESSING_PROGRESS_ID:I = 0xb

.field private static final DOWNLOAD_DIALOG_ID:I = 0x6

.field private static final DOWNLOAD_FAIL_ID:I = 0x9

.field private static final DOWNLOAD_LIMITATION_ID:I = 0x5

.field public static final DRM_AUDIO:Ljava/lang/String; = "drm_audio"

.field public static final DRM_IMAGE:Ljava/lang/String; = "drm_image"

.field public static final DRM_VIDEO:Ljava/lang/String; = "drm_video"

.field static EMPTY_FOLDER:Ljava/lang/String; = null

.field private static final EMPTY_VIEW_TYPE:I = -0x1

.field private static final FILE_NOT_FOUND_ID:I = 0x7

.field static final FLAT_MODE_OF_FOLDER_VIEW:I = 0x1

.field static final FOLDER_MODE_OF_FOLDER_VIEW:I = 0x0

.field private static final FOLDER_PATH_RETURN_ID:I = 0x4

.field static final FOLDER_VIEW_ITEM_SELECT_TASK_FINISH:I = 0x1

.field public static final GRID_VIEW_TYPE:I = 0x1

.field public static final KEY_APP_NAME:Ljava/lang/String; = "application_name"

.field private static final KEY_CLOUD_FUNCTION_ENABLED:Ljava/lang/String; = "CloudFunctionEnabled"

.field static final KEY_CLOUD_SERVICE_ACCOUNT_REQUEST:Ljava/lang/String; = "CloudServiceAccountName"

.field static final KEY_CLOUD_SERVICE_NAME_REQUEST:Ljava/lang/String; = "CloudServiceType"

.field public static final KEY_DRM_FILTER:Ljava/lang/String; = "drm_filter"

.field public static final KEY_DROPBOX_SHARE_LINK_ENABLE:Ljava/lang/String; = "returnDropBoxShareLinkEnable"

.field public static final KEY_FILTER:Ljava/lang/String; = "filter"

.field public static final KEY_FOLDER_ITEM_SELECT_ENABLED:Ljava/lang/String; = "folderItemSelectEnabled"

.field public static final KEY_GROUP_BY_PATH:Ljava/lang/String; = "showPath"

.field public static final KEY_MODE_TYPE_OF_FOLDER_VIEW:Ljava/lang/String; = "ModeTypeOfFolderView"

.field public static final KEY_NO_FILE_FOUND_TEXT:Ljava/lang/String; = "no_file_found_text"

.field public static final KEY_ONLY_SCAN_FOLDER_AT_FOLDER_MODE:Ljava/lang/String; = "onlyScanFolderAtFolderMode"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEY_RECENT_FILES:Ljava/lang/String; = "recent_files"

.field private static final KEY_RECENT_TIMES:Ljava/lang/String; = "recent_time"

.field public static final KEY_REMOVE_FILE_MODE:Ljava/lang/String; = "remove_file_mode"

.field public static final KEY_ROOT_PATH:Ljava/lang/String; = "root_path"

.field public static final KEY_SEARCH_HINT_TEXT:Ljava/lang/String; = "hint_search_text"

.field public static final KEY_SELECTION_TYPE:Ljava/lang/String; = "selectionType"

.field public static final KEY_SHOW_ONLY_ONE_VIEW_TYPE_FORCE_ENABLED:Ljava/lang/String; = "showOnlyOneViewTypeForceEnabled"

.field public static final KEY_SORT_ORDER:Ljava/lang/String; = "sort_order"

.field public static final KEY_SORT_TYPE:Ljava/lang/String; = "sort_type"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_TITLE_ID:Ljava/lang/String; = "title_string_id"

.field public static final KEY_VIEW_TYPE:Ljava/lang/String; = "viewType"

.field static final LIST_MODE_OF_FOLDER_VIEW:I = 0x2

.field static LOADING:Ljava/lang/String; = null

.field public static final MULTIPLE_SELECTION:I = 0x1

.field private static final NETWORK_SETTING_ID:I = 0xa

.field private static final NON_USER_PREFERENCES:I = -0x1

.field static final NOTIFY_CLOUD_EXCEPTION:I = 0xd

.field static final NOTIFY_CLOUD_FILE_DOWNLOAD_FINISH:I = 0x2

.field static final NOTIFY_CLOUD_LOGIN_CHECK_TASK:I = 0xc

.field static final NOTIFY_DOWNLOAD_FAIL:I = 0x9

.field private static final NOTIFY_LOAD_FILES:I = 0xf

.field static final NOTIFY_MORE_EXPAND_FAIL:I = 0xa

.field private static final NOTIFY_STORAGE_UNAVAILABLE:I = 0xe

.field public static final OUTPUT_PATH_ARRAY:Ljava/lang/String; = "output"

.field private static final PERFORM_ON_RESULT_AND_FINISH_TASK:I = 0xb

.field static RECENT_USED:Ljava/lang/String; = null

.field private static final REFRESH_ITEM_ID:I = 0x1

.field private static final SEARCH_ITEM_ID:I = 0x3

.field public static final SINGLE_SELECTION:I = 0x0

.field static final SORT_BY_DATE:I = 0x1

.field static final SORT_BY_NAME:I = 0x0

.field private static final SORT_ITEM_ID:I = 0x2

.field static final SORT_ORDER_ASCENDING:I = 0x0

.field static final SORT_ORDER_DESCENDING:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private final DEFAULT_SORT_ORDER:I

.field private final DEFAULT_SORT_TYPE:I

.field Default_Landscape_Padding_Bottom:I

.field Default_Landscape_Padding_Top:I

.field Default_Portrait_Padding_Bottom:I

.field Default_Portrait_Padding_Top:I

.field private final FILE_PICKER_PREFERENCE:Ljava/lang/String;

.field private final INIT_TAG:Ljava/lang/String;

.field private final KEY_CURRENT_ADAPTER_IS_LOCAL_MODE:Ljava/lang/String;

.field private final KEY_FILE_PICKER_MODE_ENABLED:Ljava/lang/String;

.field private final KEY_FOLDER_PICKER_MODE_ENABLED:Ljava/lang/String;

.field private final KEY_LOCAL_DATA_SOURCE_ENABLED:Ljava/lang/String;

.field private final KEY_ONLY_SHOW_CAN_WRITE_FOLDER:Ljava/lang/String;

.field private final KEY_USB_CONNECTION_MODE:Ljava/lang/String;

.field private MoreExpanedObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/FilePickerCore$MoreExpanedObject;",
            ">;"
        }
    .end annotation
.end field

.field private final NOTIFY_FAVORITE_DATA_CHANGE:I

.field private final NOTIFY_FILEPICKER_INITIAL_TASK:I

.field private final NOTIFY_RECENT_DATA_CHANGE:I

.field private final NOTIFY_RESCAN_FILES:I

.field private final SHOW_CLOUD_PICKER_VIEW_TASK:I

.field private final SHOW_LOCAL_PICKER_VIEW_TASK:I

.field private final SHOW_USB_CONNECTION_PICKER_VIEW_TASK:I

.field private final TAG:Ljava/lang/String;

.field private final USER_PREFER_CAROUSEL_DEFAULT_TAB:Ljava/lang/String;

.field private final USER_PREFER_CLOUD_ACCOUNT_NAME:Ljava/lang/String;

.field private final USER_PREFER_CLOUD_REFRESH_END_TIME:Ljava/lang/String;

.field private final USER_PREFER_CLOUD_SERVICE_NAME:Ljava/lang/String;

.field private final USER_PREFER_SHOW_CLOUD_FILES_SCOPE:Ljava/lang/String;

.field private final USER_PREFER_SHOW_LOCAL_FILES_SCOPE:Ljava/lang/String;

.field private favorite_view:Lcom/htc/app/FilePickerListView;

.field private gridItemBkg:Landroid/graphics/drawable/LayerDrawable;

.field private gridItemSize:I

.field private handler:Landroid/os/Handler;

.field private final initLog:Z

.field private isFolderItemSelectedEnabled:Z

.field private isNetworkConnected:Z

.field private isReturnCloudShareLinkEnabled:Z

.field private isSdcardRoot:Z

.field private final localLOGV:Z

.field private mActHandler:Landroid/os/Handler;

.field private mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

.field private mAppBackUpOnClickListener:Landroid/view/View$OnClickListener;

.field private mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

.field private mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

.field private mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field mAppName:Ljava/lang/String;

.field private mAppSearchContainerBackUpOnClickListener:Landroid/view/View$OnClickListener;

.field private mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

.field private mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentTab:Ljava/lang/String;

.field private mDbHelper:Lcom/htc/app/FilePickerDBHelper;

.field private mDropboxText:Ljava/lang/String;

.field private mEditor:Landroid/widget/AutoCompleteTextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFavoriteDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

.field private mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private mFavoritesText:Ljava/lang/String;

.field private mFilePickerAct:Landroid/app/Activity;

.field private mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

.field private mFilePickerFavoritesFragment:Lcom/htc/app/FilePickerFavoritesFragment;

.field private mFilePickerLandingView:Landroid/view/View;

.field private mFilePickerMainView:Landroid/view/View;

.field private mFilePickerRecentFragment:Lcom/htc/app/FilePickerRecentFragment;

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mFileSorter:Lcom/htc/app/FileSorter;

.field private mFilter:[Ljava/lang/String;

.field private mHeaderOfFavoriteListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

.field private mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

.field private mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

.field private mHintText:Ljava/lang/String;

.field private mInitThread:Ljava/lang/Thread;

.field private mInitialTime:J

.field private mIsActionModeChoiceEnabled:Z

.field private mIsCloudDataSourceItemsEnabled:Z

.field private mIsCloudFolderPickerEnabled:Z

.field private mIsFavoriteStopScan:Z

.field private mIsFilePickerModeEnabled:Z

.field private mIsFolderPickerModeEnabled:Z

.field private mIsLocalDataSourceItemsEnabled:Z

.field private mIsOnlyShowCanWriteFolder:Z

.field private mIsRecentStopScan:Z

.field private mIsSearchMenuItemVisabled:Z

.field private mIsShowPath:Z

.field private mIsSortMenuItemVisabled:Z

.field private mIsTypeStopScan:Z

.field private mIsUsbConnectionMode:Z

.field private final mItemImageStr:Ljava/lang/String;

.field private final mItemTabTypeStr:Ljava/lang/String;

.field private final mItemTextStr:Ljava/lang/String;

.field private mOrientation:I

.field private mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private mRecentDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

.field private mRecentFiles:[Ljava/lang/String;

.field private mRecentFilesTime:[J

.field private mRecentText:Ljava/lang/String;

.field private mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

.field mSelectedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedFolderItemInfoLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionType:I

.field private mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

.field private mSkyDriveText:Ljava/lang/String;

.field private mSortOrder:I

.field private mSortSelectedItem:I

.field private mSortType:I

.field private mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

.field private mTypeText:Ljava/lang/String;

.field private mUsbConnetionViewMode:I

.field private notifyCloudExceptionRunnable:Ljava/lang/Runnable;

.field private notifyCloudFileDownloadFinishRunnable:Ljava/lang/Runnable;

.field private notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

.field private notifyDownloadFailRunnable:Ljava/lang/Runnable;

.field private notifyFavoriteDateChangeRunnable:Ljava/lang/Runnable;

.field private notifyFilePikcerInitialRunnable:Ljava/lang/Runnable;

.field private notifyFolderViewSelectTaskFinishRunnable:Ljava/lang/Runnable;

.field private notifyLoadFilesRunnable:Ljava/lang/Runnable;

.field private notifyReScanFilesRunnable:Ljava/lang/Runnable;

.field private notifyRecentDateChangeRunnable:Ljava/lang/Runnable;

.field offlineStringArray:[Ljava/lang/String;

.field offlineTabStringArray:[Ljava/lang/String;

.field onlineStringArray:[Ljava/lang/String;

.field onlineTabStringArray:[Ljava/lang/String;

.field private recent_view:Lcom/htc/app/FilePickerListView;

.field private showCloudPickerViewRunnable:Ljava/lang/Runnable;

.field private showLocalPickerViewRunnable:Ljava/lang/Runnable;

.field private showUsbConnectionPickerViewRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 170
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;-><init>()V

    .line 72
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    .line 73
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->localLOGV:Z

    .line 74
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->initLog:Z

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    .line 77
    iput v2, p0, Lcom/htc/app/FilePickerCore;->DEFAULT_SORT_TYPE:I

    .line 78
    iput v2, p0, Lcom/htc/app/FilePickerCore;->DEFAULT_SORT_ORDER:I

    .line 79
    const-string v0, "initial"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->INIT_TAG:Ljava/lang/String;

    .line 81
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsSortMenuItemVisabled:Z

    .line 84
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    .line 85
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    .line 101
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->gridItemBkg:Landroid/graphics/drawable/LayerDrawable;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->handler:Landroid/os/Handler;

    .line 123
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->isSdcardRoot:Z

    .line 131
    iput v2, p0, Lcom/htc/app/FilePickerCore;->mSortSelectedItem:I

    .line 133
    iput v5, p0, Lcom/htc/app/FilePickerCore;->mOrientation:I

    .line 135
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    .line 138
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    .line 147
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerMainView:Landroid/view/View;

    .line 150
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerLandingView:Landroid/view/View;

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/FilePickerCore;->mInitialTime:J

    .line 200
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 272
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mRecentFilesTime:[J

    .line 273
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    .line 274
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    .line 275
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsActionModeChoiceEnabled:Z

    .line 276
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    .line 448
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/app/FilePickerCore$1;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerCore$1;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    .line 655
    new-instance v0, Lcom/htc/app/FilePickerCore$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$2;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppBackUpOnClickListener:Landroid/view/View$OnClickListener;

    .line 665
    new-instance v0, Lcom/htc/app/FilePickerCore$3;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$3;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppSearchContainerBackUpOnClickListener:Landroid/view/View$OnClickListener;

    .line 681
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    .line 683
    new-instance v0, Lcom/htc/app/FilePickerCore$4;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$4;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1129
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    .line 1130
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsOnlyShowCanWriteFolder:Z

    .line 1131
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsFolderPickerModeEnabled:Z

    .line 1132
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsFilePickerModeEnabled:Z

    .line 1163
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsShowPath:Z

    .line 2168
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    .line 2315
    const-string v0, "ItemImage"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mItemImageStr:Ljava/lang/String;

    .line 2316
    const-string v0, "ItemText"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mItemTextStr:Ljava/lang/String;

    .line 2317
    const-string v0, "ItemTabType"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mItemTabTypeStr:Ljava/lang/String;

    .line 2460
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 2806
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/FilePickerCore;->mUsbConnetionViewMode:I

    .line 3256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    .line 3345
    new-instance v0, Lcom/htc/app/FilePickerCore$12;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$12;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 3389
    new-instance v0, Lcom/htc/app/FilePickerCore$13;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$13;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoriteDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 3511
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    .line 3518
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsRecentStopScan:Z

    .line 3519
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsFavoriteStopScan:Z

    .line 3530
    new-instance v0, Lcom/htc/app/FilePickerCore$14;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$14;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 4152
    iput v2, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_RESCAN_FILES:I

    .line 4155
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_RECENT_DATA_CHANGE:I

    .line 4156
    iput v5, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_FAVORITE_DATA_CHANGE:I

    .line 4157
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_FILEPICKER_INITIAL_TASK:I

    .line 4158
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/app/FilePickerCore;->SHOW_USB_CONNECTION_PICKER_VIEW_TASK:I

    .line 4159
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/app/FilePickerCore;->SHOW_CLOUD_PICKER_VIEW_TASK:I

    .line 4160
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/app/FilePickerCore;->SHOW_LOCAL_PICKER_VIEW_TASK:I

    .line 4649
    const-string v0, "onlyShowCanWriteFolder"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_ONLY_SHOW_CAN_WRITE_FOLDER:Ljava/lang/String;

    .line 4687
    const-string v0, "UsbConnectionMode"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_USB_CONNECTION_MODE:Ljava/lang/String;

    .line 4688
    const-string v0, "pref_key_filepicker_local_files_scope_type"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_SHOW_LOCAL_FILES_SCOPE:Ljava/lang/String;

    .line 4689
    const-string v0, "pref_key_filepicker_cloud_files_scope_type"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_SHOW_CLOUD_FILES_SCOPE:Ljava/lang/String;

    .line 4690
    const-string v0, "pref_key_filepicker_files_cloud_service_name"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CLOUD_SERVICE_NAME:Ljava/lang/String;

    .line 4691
    const-string v0, "pref_key_filepicker_files_cloud_account_name"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CLOUD_ACCOUNT_NAME:Ljava/lang/String;

    .line 4692
    const-string v0, "pref_key_filepicker_cloud_service_end_time"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CLOUD_REFRESH_END_TIME:Ljava/lang/String;

    .line 4693
    const-string v0, "pref_key_filepicker_carousel_default_tab"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CAROUSEL_DEFAULT_TAB:Ljava/lang/String;

    .line 4695
    const-string v0, "FilePickerPreference"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->FILE_PICKER_PREFERENCE:Ljava/lang/String;

    .line 4697
    const-string v0, "FOLDER_PICKER_MODE_ENABLED"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_FOLDER_PICKER_MODE_ENABLED:Ljava/lang/String;

    .line 4698
    const-string v0, "FILE_PICKER_MODE_ENABLED"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_FILE_PICKER_MODE_ENABLED:Ljava/lang/String;

    .line 4699
    const-string v0, "LocalDataSourceEnable"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_LOCAL_DATA_SOURCE_ENABLED:Ljava/lang/String;

    .line 4704
    const-string v0, "CurrentAppAdapterIsLocalMode"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_CURRENT_ADAPTER_IS_LOCAL_MODE:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 6
    .parameter "activity"
    .parameter "context"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 174
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;-><init>()V

    .line 72
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    .line 73
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->localLOGV:Z

    .line 74
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->initLog:Z

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    .line 77
    iput v2, p0, Lcom/htc/app/FilePickerCore;->DEFAULT_SORT_TYPE:I

    .line 78
    iput v2, p0, Lcom/htc/app/FilePickerCore;->DEFAULT_SORT_ORDER:I

    .line 79
    const-string v0, "initial"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->INIT_TAG:Ljava/lang/String;

    .line 81
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsSortMenuItemVisabled:Z

    .line 84
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    .line 85
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    .line 101
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->gridItemBkg:Landroid/graphics/drawable/LayerDrawable;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->handler:Landroid/os/Handler;

    .line 123
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->isSdcardRoot:Z

    .line 131
    iput v2, p0, Lcom/htc/app/FilePickerCore;->mSortSelectedItem:I

    .line 133
    iput v5, p0, Lcom/htc/app/FilePickerCore;->mOrientation:I

    .line 135
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    .line 138
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    .line 147
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerMainView:Landroid/view/View;

    .line 150
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerLandingView:Landroid/view/View;

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/FilePickerCore;->mInitialTime:J

    .line 200
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 272
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mRecentFilesTime:[J

    .line 273
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    .line 274
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    .line 275
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsActionModeChoiceEnabled:Z

    .line 276
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    .line 448
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/app/FilePickerCore$1;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerCore$1;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    .line 655
    new-instance v0, Lcom/htc/app/FilePickerCore$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$2;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppBackUpOnClickListener:Landroid/view/View$OnClickListener;

    .line 665
    new-instance v0, Lcom/htc/app/FilePickerCore$3;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$3;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppSearchContainerBackUpOnClickListener:Landroid/view/View$OnClickListener;

    .line 681
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    .line 683
    new-instance v0, Lcom/htc/app/FilePickerCore$4;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$4;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1129
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    .line 1130
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsOnlyShowCanWriteFolder:Z

    .line 1131
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsFolderPickerModeEnabled:Z

    .line 1132
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsFilePickerModeEnabled:Z

    .line 1163
    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsShowPath:Z

    .line 2168
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    .line 2315
    const-string v0, "ItemImage"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mItemImageStr:Ljava/lang/String;

    .line 2316
    const-string v0, "ItemText"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mItemTextStr:Ljava/lang/String;

    .line 2317
    const-string v0, "ItemTabType"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mItemTabTypeStr:Ljava/lang/String;

    .line 2460
    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 2806
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/FilePickerCore;->mUsbConnetionViewMode:I

    .line 3256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    .line 3345
    new-instance v0, Lcom/htc/app/FilePickerCore$12;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$12;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 3389
    new-instance v0, Lcom/htc/app/FilePickerCore$13;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$13;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoriteDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 3511
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    .line 3518
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsRecentStopScan:Z

    .line 3519
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsFavoriteStopScan:Z

    .line 3530
    new-instance v0, Lcom/htc/app/FilePickerCore$14;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$14;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 4152
    iput v2, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_RESCAN_FILES:I

    .line 4155
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_RECENT_DATA_CHANGE:I

    .line 4156
    iput v5, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_FAVORITE_DATA_CHANGE:I

    .line 4157
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/app/FilePickerCore;->NOTIFY_FILEPICKER_INITIAL_TASK:I

    .line 4158
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/app/FilePickerCore;->SHOW_USB_CONNECTION_PICKER_VIEW_TASK:I

    .line 4159
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/app/FilePickerCore;->SHOW_CLOUD_PICKER_VIEW_TASK:I

    .line 4160
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/app/FilePickerCore;->SHOW_LOCAL_PICKER_VIEW_TASK:I

    .line 4649
    const-string v0, "onlyShowCanWriteFolder"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_ONLY_SHOW_CAN_WRITE_FOLDER:Ljava/lang/String;

    .line 4687
    const-string v0, "UsbConnectionMode"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_USB_CONNECTION_MODE:Ljava/lang/String;

    .line 4688
    const-string v0, "pref_key_filepicker_local_files_scope_type"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_SHOW_LOCAL_FILES_SCOPE:Ljava/lang/String;

    .line 4689
    const-string v0, "pref_key_filepicker_cloud_files_scope_type"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_SHOW_CLOUD_FILES_SCOPE:Ljava/lang/String;

    .line 4690
    const-string v0, "pref_key_filepicker_files_cloud_service_name"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CLOUD_SERVICE_NAME:Ljava/lang/String;

    .line 4691
    const-string v0, "pref_key_filepicker_files_cloud_account_name"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CLOUD_ACCOUNT_NAME:Ljava/lang/String;

    .line 4692
    const-string v0, "pref_key_filepicker_cloud_service_end_time"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CLOUD_REFRESH_END_TIME:Ljava/lang/String;

    .line 4693
    const-string v0, "pref_key_filepicker_carousel_default_tab"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->USER_PREFER_CAROUSEL_DEFAULT_TAB:Ljava/lang/String;

    .line 4695
    const-string v0, "FilePickerPreference"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->FILE_PICKER_PREFERENCE:Ljava/lang/String;

    .line 4697
    const-string v0, "FOLDER_PICKER_MODE_ENABLED"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_FOLDER_PICKER_MODE_ENABLED:Ljava/lang/String;

    .line 4698
    const-string v0, "FILE_PICKER_MODE_ENABLED"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_FILE_PICKER_MODE_ENABLED:Ljava/lang/String;

    .line 4699
    const-string v0, "LocalDataSourceEnable"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_LOCAL_DATA_SOURCE_ENABLED:Ljava/lang/String;

    .line 4704
    const-string v0, "CurrentAppAdapterIsLocalMode"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->KEY_CURRENT_ADAPTER_IS_LOCAL_MODE:Ljava/lang/String;

    .line 175
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerAct:Landroid/app/Activity;

    .line 176
    iput-object p2, p0, Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;

    .line 177
    return-void
.end method

.method private NotifyToDoTask(I)V
    .locals 10
    .parameter "what"

    .prologue
    const/4 v9, 0x1

    .line 4219
    packed-switch p1, :pswitch_data_0

    .line 4452
    :cond_0
    :goto_0
    return-void

    .line 4222
    :pswitch_0
    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/app/FilePickerCore$24;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$24;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4228
    .local v5, performOnResultAndFinishThread:Ljava/lang/Thread;
    invoke-virtual {v5, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 4229
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 4232
    .end local v5           #performOnResultAndFinishThread:Ljava/lang/Thread;
    :pswitch_1
    new-instance v7, Lcom/htc/app/FilePickerCore$25;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$25;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->showLocalPickerViewRunnable:Ljava/lang/Runnable;

    .line 4237
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 4238
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->showLocalPickerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4241
    :pswitch_2
    new-instance v7, Lcom/htc/app/FilePickerCore$26;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$26;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->showCloudPickerViewRunnable:Ljava/lang/Runnable;

    .line 4246
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 4247
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->showCloudPickerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4250
    :pswitch_3
    new-instance v7, Lcom/htc/app/FilePickerCore$27;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$27;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->showUsbConnectionPickerViewRunnable:Ljava/lang/Runnable;

    .line 4255
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 4256
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->showUsbConnectionPickerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4259
    :pswitch_4
    new-instance v7, Lcom/htc/app/FilePickerCore$28;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$28;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyFilePikcerInitialRunnable:Ljava/lang/Runnable;

    .line 4264
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 4265
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyFilePikcerInitialRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4268
    :pswitch_5
    new-instance v7, Lcom/htc/app/FilePickerCore$29;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$29;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyReScanFilesRunnable:Ljava/lang/Runnable;

    .line 4273
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 4274
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyReScanFilesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4278
    :pswitch_6
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/app/FilePickerCore$30;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$30;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4284
    .local v6, thread:Ljava/lang/Thread;
    invoke-virtual {v6, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 4285
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 4286
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showProcessingPage()V

    .line 4287
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 4290
    .end local v6           #thread:Ljava/lang/Thread;
    :pswitch_7
    new-instance v7, Lcom/htc/app/FilePickerCore$31;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$31;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyCloudFileDownloadFinishRunnable:Ljava/lang/Runnable;

    .line 4305
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 4306
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyCloudFileDownloadFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4309
    :pswitch_8
    new-instance v7, Lcom/htc/app/FilePickerCore$32;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$32;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyRecentDateChangeRunnable:Ljava/lang/Runnable;

    .line 4315
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 4316
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyRecentDateChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4319
    :pswitch_9
    new-instance v7, Lcom/htc/app/FilePickerCore$33;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$33;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyFavoriteDateChangeRunnable:Ljava/lang/Runnable;

    .line 4325
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 4326
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyFavoriteDateChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4330
    :pswitch_a
    new-instance v7, Lcom/htc/app/FilePickerCore$34;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$34;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyDownloadFailRunnable:Ljava/lang/Runnable;

    .line 4339
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 4340
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyDownloadFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4343
    :pswitch_b
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getFilePickerUtil()Lcom/htc/app/FilePickerUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v4

    .line 4345
    .local v4, dataSourceType:I
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 4347
    :pswitch_c
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x20403d4

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4352
    :pswitch_d
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x20403d3

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4359
    .end local v4           #dataSourceType:I
    :pswitch_e
    new-instance v7, Lcom/htc/app/FilePickerCore$35;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$35;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

    .line 4378
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 4379
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4380
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4381
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4386
    :pswitch_f
    new-instance v7, Lcom/htc/app/FilePickerCore$36;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$36;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyCloudExceptionRunnable:Ljava/lang/Runnable;

    goto/16 :goto_0

    .line 4422
    :pswitch_10
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v2

    .line 4423
    .local v2, bIntStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v0

    .line 4424
    .local v0, bExtStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageShared()Z

    move-result v3

    .line 4425
    .local v3, bIntStorageShared:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageShared()Z

    move-result v1

    .line 4427
    .local v1, bExtStorageShared:Z
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 4428
    if-nez v3, :cond_1

    if-eqz v1, :cond_2

    .line 4429
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x20401f9

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4432
    :cond_2
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x20400a0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4439
    .end local v0           #bExtStorageAvailable:Z
    .end local v1           #bExtStorageShared:Z
    .end local v2           #bIntStorageAvailable:Z
    .end local v3           #bIntStorageShared:Z
    :pswitch_11
    new-instance v7, Lcom/htc/app/FilePickerCore$37;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$37;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v7, p0, Lcom/htc/app/FilePickerCore;->notifyLoadFilesRunnable:Ljava/lang/Runnable;

    .line 4445
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 4446
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4447
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyLoadFilesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4448
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->notifyLoadFilesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 4345
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/app/FilePickerCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->hideSearchBar()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerCloudHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showSearchBar()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->performDropDownItemClick(Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerCloudHelper;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->checkCloudServiceDataSourceFromIntentRequest(Lcom/htc/app/FilePickerCloudHelper;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/app/FilePickerCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->showViewByTab(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/app/FilePickerCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->isFolderItemSelectedEnabled:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->checkActionBarContainerBackUpEnabled()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/app/FilePickerCore;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/app/FilePickerCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    return v0
.end method

.method static synthetic access$3402(Lcom/htc/app/FilePickerCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    return p1
.end method

.method static synthetic access$3500(Lcom/htc/app/FilePickerCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    return v0
.end method

.method static synthetic access$3502(Lcom/htc/app/FilePickerCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    return p1
.end method

.method static synthetic access$3600(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/app/FilePickerCore;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/htc/app/FilePickerCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/htc/app/FilePickerCore;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialSharedPreferences()V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/app/FilePickerCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/app/FilePickerCore;->gridItemSize:I

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/app/FilePickerCore;)Landroid/graphics/drawable/LayerDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->gridItemBkg:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/app/FilePickerCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadLocalDataSourceTypePreferences()I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/htc/app/FilePickerCore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/htc/app/FilePickerCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchLocalPicker()V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mDropboxText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFilePicker()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->checkCloudServiceEnabledFromIntentRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSkyDriveText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/app/FilePickerCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerAppDropDownAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getAppDropDownLocalAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/app/FilePickerCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->showNoSdCard(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerDBHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->hideDialog()V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/app/FilePickerCore;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->getFileCountString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialSettings()V

    return-void
.end method

.method static synthetic access$6000(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCore;->setListViewHeaderText(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6102(Lcom/htc/app/FilePickerCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore;->mIsRecentStopScan:Z

    return p1
.end method

.method static synthetic access$6202(Lcom/htc/app/FilePickerCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore;->mIsFavoriteStopScan:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    return v0
.end method

.method static synthetic access$6302(Lcom/htc/app/FilePickerCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FileSorter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/htc/app/FilePickerCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->notifyTextChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->notifyTextChanged()V

    return-void
.end method

.method static synthetic access$6700(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->sort(Lcom/htc/app/FilePickerListAdapter;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/htc/app/FilePickerCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCore;->saveSortPreferences(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/app/FilePickerCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V

    return-void
.end method

.method static synthetic access$7002(Lcom/htc/app/FilePickerCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/htc/app/FilePickerCore;->mSortSelectedItem:I

    return p1
.end method

.method static synthetic access$7100(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->performOnResultAndFinishTask()V

    return-void
.end method

.method static synthetic access$7200(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLocalFilePickerView()V

    return-void
.end method

.method static synthetic access$7300(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showCloudPickerView()V

    return-void
.end method

.method static synthetic access$7400(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showUsbConnectionPickerView()V

    return-void
.end method

.method static synthetic access$7500(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->switchLayoutByPicker()V

    return-void
.end method

.method static synthetic access$7600(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->reStartToScan()V

    return-void
.end method

.method static synthetic access$7700(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->performDoneButtonOnClickListenerClick()V

    return-void
.end method

.method static synthetic access$7800(Lcom/htc/app/FilePickerCore;[Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$7900(Lcom/htc/app/FilePickerCore;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->finish()V

    return-void
.end method

.method static synthetic access$8100(Lcom/htc/app/FilePickerCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    return v0
.end method

.method static synthetic access$8200(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFolderPicker()V

    return-void
.end method

.method static synthetic access$8300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerAppDropDownAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getAppDropDownCloudAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Lcom/htc/app/FilePickerCore;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->doScanFiles()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerActionBarExtController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    return-object v0
.end method

.method private addMoreExpanedObjectToList(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 2171
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 2172
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    .line 2174
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2175
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2187
    :cond_1
    :goto_0
    return-void

    .line 2177
    :cond_2
    const/4 v1, 0x1

    .line 2178
    .local v1, isNeedNew:Z
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    .line 2179
    .local v2, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2180
    const/4 v1, 0x0

    goto :goto_1

    .line 2183
    .end local v2           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_4
    if-eqz v1, :cond_1

    .line 2184
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkActionBarContainerBackUpEnabled()V
    .locals 2

    .prologue
    .line 2692
    const/4 v0, 0x0

    .line 2693
    .local v0, actionBarContainerBackUpEnabled:Z
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-eqz v1, :cond_2

    .line 2694
    const/4 v0, 0x1

    .line 2700
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-eqz v1, :cond_1

    .line 2701
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerActionBarExtController;->setActionBarContainerBackUpEnabled(Z)V

    .line 2702
    :cond_1
    return-void

    .line 2695
    :cond_2
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-eqz v1, :cond_3

    .line 2696
    const/4 v0, 0x0

    goto :goto_0

    .line 2697
    :cond_3
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-nez v1, :cond_0

    .line 2698
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCloudServiceDataSourceFromIntentRequest(Lcom/htc/app/FilePickerCloudHelper;)Z
    .locals 8
    .parameter "filePickerCloudHelper"

    .prologue
    .line 573
    const/4 v4, 0x0

    .line 574
    .local v4, result:Z
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 576
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid null argument. Please check a pair of CloudService and CloudServiceAccount from the intent settings"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 578
    :cond_0
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 580
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Please check a pair of CloudService and CloudServiceAccount from the intent settings"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 582
    :cond_1
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 584
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    array-length v6, v6

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    array-length v7, v7

    if-eq v6, v7, :cond_2

    .line 585
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Please check a pair of CloudService and CloudServiceAccount from the intent settings"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 588
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_7

    .line 589
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_3

    const-string v6, ""

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 591
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid null argument for the account name of HtcCloudService"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 594
    :cond_4
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_6

    .line 595
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/htc/app/FilePickerCloudHelper;->getServiceTypeFromString(Ljava/lang/String;)I

    move-result v5

    .line 597
    .local v5, serviceType:I
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    aget-object v0, v6, v1

    .line 598
    .local v0, accountId:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v6, v5, v0}, Lcom/htc/app/FilePickerCloudHelper;->isSignIn(ILjava/lang/String;)Z

    move-result v2

    .line 599
    .local v2, isSingIn:Z
    if-eqz v2, :cond_5

    .line 600
    const/4 v4, 0x0

    .line 594
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 602
    :cond_5
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid behavior when launch CloudFilePicker, please do sign first."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 588
    .end local v0           #accountId:Ljava/lang/String;
    .end local v2           #isSingIn:Z
    .end local v5           #serviceType:I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .end local v3           #j:I
    :cond_7
    if-eqz v4, :cond_8

    .line 608
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    .line 611
    .end local v1           #i:I
    :cond_8
    return v4
.end method

.method private checkCloudServiceEnabledFromIntentRequest()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 526
    const/4 v4, 0x0

    .line 527
    .local v4, result:Z
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 529
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Invalid null argument. Please check a pair of CloudService and CloudServiceAccount from the intent settings"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 531
    :cond_0
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    if-nez v7, :cond_1

    .line 533
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Please check a pair of CloudService and CloudServiceAccount from the intent settings"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 535
    :cond_1
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 537
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    array-length v7, v7

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    array-length v8, v8

    if-eq v7, v8, :cond_2

    .line 538
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Please check a pair of CloudService and CloudServiceAccount from the intent settings"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 541
    :cond_2
    const/4 v1, 0x0

    .line 542
    .local v1, hasAnyServiceAvialible:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_7

    .line 543
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    aget-object v7, v7, v2

    if-eqz v7, :cond_3

    const-string v7, ""

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 545
    :cond_3
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Invalid null argument for the service name of HtcCloudService"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 542
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    :cond_5
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    aget-object v5, v7, v2

    .line 549
    .local v5, serviceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/app/FilePickerCloudHelper;->getServiceTypeFromString(Ljava/lang/String;)I

    move-result v0

    .line 551
    .local v0, dataSourceType:I
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/app/FilePickerCloudHelper;->isCloudServiceEnabled(I)Z

    move-result v3

    .line 553
    .local v3, isCloudServiceEnabled:Z
    if-eqz v3, :cond_4

    .line 554
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v7, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 555
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v7, v0}, Lcom/htc/app/FilePickerUtil;->showDateSurceTypeCloudItemUiVisabled(I)V

    .line 556
    iput-boolean v6, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    .line 557
    iput-boolean v6, p0, Lcom/htc/app/FilePickerCore;->mIsActionModeChoiceEnabled:Z

    .line 558
    const/4 v1, 0x1

    move v4, v6

    .line 568
    .end local v0           #dataSourceType:I
    .end local v1           #hasAnyServiceAvialible:Z
    .end local v2           #i:I
    .end local v3           #isCloudServiceEnabled:Z
    .end local v4           #result:Z
    .end local v5           #serviceName:Ljava/lang/String;
    :cond_6
    :goto_1
    return v4

    .line 563
    .restart local v1       #hasAnyServiceAvialible:Z
    .restart local v2       #i:I
    .restart local v4       #result:Z
    :cond_7
    if-nez v1, :cond_6

    .line 564
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Not found any HtcCloudService avialible."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkHTCLandscapeEnabled(Z)V
    .locals 7
    .parameter "forceHTCLandscapeEnabled"

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x20200be

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1102
    .local v3, localLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x20200c2

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1103
    .local v0, cloudLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x20200c4

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1104
    .local v2, landingPageLayout:Landroid/view/View;
    const/4 v1, 0x0

    .line 1105
    .local v1, enableHTCLandscape:Z
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 1106
    const/4 v1, 0x0

    .line 1119
    :goto_0
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-eqz v5, :cond_1

    .line 1120
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-nez v1, :cond_0

    if-eqz p1, :cond_6

    :cond_0
    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/htc/app/FilePickerActionBarExtController;->enableHTCLandscape(Ljava/lang/Boolean;)V

    .line 1122
    :cond_1
    return-void

    .line 1107
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 1108
    const/4 v1, 0x0

    goto :goto_0

    .line 1109
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 1110
    const v5, 0x20200bf

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1111
    .local v4, localVarouselView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1112
    const/4 v1, 0x1

    goto :goto_0

    .line 1114
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1117
    .end local v4           #localVarouselView:Landroid/view/View;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 1120
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkShowNoLoginView(Landroid/view/View;)V
    .locals 9
    .parameter "filePickerFolderView"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 2320
    const v5, 0x20200aa

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2321
    .local v2, emptyView:Landroid/widget/TextView;
    const v5, 0x20200af

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2322
    .local v4, noLoginLayout:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 2323
    const v5, 0x20200ac

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2325
    .local v1, cloudDataSourceType:I
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/htc/app/FilePickerCloudHelper;->hasAnyAccountSignIn(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2326
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2327
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2329
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcom/htc/app/FilePickerUtil;->setMoreExpandNoFileFoundText(Landroid/widget/TextView;ILandroid/content/Context;)V

    .line 2332
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v5, v1}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v0

    .line 2333
    .local v0, accounts:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 2334
    invoke-direct {p0, v1, v8}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v3

    .line 2336
    .local v3, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    if-eqz v3, :cond_0

    .line 2337
    aget-object v5, v0, v6

    invoke-virtual {v3, v5}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->setAccountId(Ljava/lang/String;)V

    .line 2346
    .end local v0           #accounts:[Ljava/lang/String;
    .end local v1           #cloudDataSourceType:I
    .end local v3           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_0
    :goto_0
    return-void

    .line 2341
    .restart local v1       #cloudDataSourceType:I
    :cond_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2342
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2343
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private checkShowViewByTag(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 4096
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4097
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 4104
    :cond_0
    :goto_0
    return-void

    .line 4099
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 4100
    .local v2, visibleTag:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 4101
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #visibleTag:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4102
    .local v1, visibility:I
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private clearHandler()V
    .locals 2

    .prologue
    .line 4170
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4171
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4172
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4173
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4174
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4175
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4176
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4177
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4178
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4179
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4180
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4181
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4182
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4183
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4184
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4185
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4187
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyReScanFilesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4188
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyCloudFileDownloadFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4189
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyFolderViewSelectTaskFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4190
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyFavoriteDateChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4191
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyFilePikcerInitialRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4192
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->showUsbConnectionPickerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4193
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->showCloudPickerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4194
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->showLocalPickerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4195
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyDownloadFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4196
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4197
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyCloudExceptionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4198
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->notifyLoadFilesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4200
    :cond_0
    return-void
.end method

.method private createBlockingProgressDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "messageId"

    .prologue
    const/4 v2, 0x0

    .line 3628
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3629
    .local v0, progressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3630
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 3631
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 3632
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 3633
    return-object v0
.end method

.method private createDownloadDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 3659
    const/4 v0, 0x0

    .line 3661
    .local v0, htcProgressDialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v1, :cond_0

    .line 3662
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->getProgressDialog(Landroid/app/Activity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    .line 3663
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 3665
    :cond_0
    return-object v0
.end method

.method private createDownloadFailDialog()Landroid/app/Dialog;
    .locals 8

    .prologue
    .line 3671
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3675
    :goto_0
    const v4, 0x20400eb

    .line 3676
    .local v4, titleId:I
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    .line 3677
    .local v1, dataSourceType:I
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getFilePickerUtil()Lcom/htc/app/FilePickerUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->getCloudExceptionType()I

    move-result v0

    .line 3678
    .local v0, cloudExceptionType:I
    const v3, 0x20403ef

    .line 3680
    .local v3, strId:I
    packed-switch v0, :pswitch_data_0

    .line 3704
    :pswitch_0
    packed-switch v1, :pswitch_data_1

    .line 3714
    :goto_1
    iget-boolean v5, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 3715
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    const-string v6, "Creat a downloading failure dialog."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    :cond_0
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/htc/app/FilePickerCore$16;

    invoke-direct {v7, p0}, Lcom/htc/app/FilePickerCore$16;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    return-object v5

    .line 3672
    .end local v0           #cloudExceptionType:I
    .end local v1           #dataSourceType:I
    .end local v3           #strId:I
    .end local v4           #titleId:I
    :catch_0
    move-exception v2

    .line 3673
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 3683
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #cloudExceptionType:I
    .restart local v1       #dataSourceType:I
    .restart local v3       #strId:I
    .restart local v4       #titleId:I
    :pswitch_1
    const v3, 0x20403ee

    .line 3684
    goto :goto_1

    .line 3686
    :pswitch_2
    const v3, 0x20403ef

    .line 3687
    goto :goto_1

    .line 3689
    :pswitch_3
    const v3, 0x20403f0

    .line 3690
    goto :goto_1

    .line 3692
    :pswitch_4
    const v3, 0x20403f1

    .line 3693
    goto :goto_1

    .line 3695
    :pswitch_5
    const v3, 0x20403f2

    .line 3696
    goto :goto_1

    .line 3698
    :pswitch_6
    const v3, 0x20403f3

    .line 3699
    goto :goto_1

    .line 3701
    :pswitch_7
    const v3, 0x20403f4

    .line 3702
    goto :goto_1

    .line 3706
    :pswitch_8
    const v3, 0x20403ec

    .line 3707
    goto :goto_1

    .line 3709
    :pswitch_9
    const v3, 0x20403ed

    goto :goto_1

    .line 3680
    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3704
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private createFolderPathReturnDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 3725
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20403cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20403ce

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/htc/app/FilePickerCore$18;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerCore$18;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/app/FilePickerCore$17;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerCore$17;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createMakeSureDialog(III)Landroid/app/Dialog;
    .locals 4
    .parameter "titleStringId"
    .parameter "messageStringId"
    .parameter "buttonStringId"

    .prologue
    .line 3646
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3647
    .local v1, title:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3649
    .local v0, message:Ljava/lang/String;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/app/FilePickerCore$15;

    invoke-direct {v3, p0}, Lcom/htc/app/FilePickerCore$15;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v2, p3, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private createNetworkSettingDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 3803
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x2040278

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x204009e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040257

    new-instance v2, Lcom/htc/app/FilePickerCore$20;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerCore$20;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040256

    new-instance v2, Lcom/htc/app/FilePickerCore$19;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerCore$19;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createProgressDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "messageId"

    .prologue
    const/4 v2, 0x1

    .line 3637
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3638
    .local v0, progressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3639
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 3640
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 3641
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 3642
    return-object v0
.end method

.method private createSortDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 3826
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x204014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x207001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/app/FilePickerCore;->mSortSelectedItem:I

    new-instance v3, Lcom/htc/app/FilePickerCore$22;

    invoke-direct {v3, p0}, Lcom/htc/app/FilePickerCore$22;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/app/FilePickerCore$21;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerCore$21;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private dismissLoadingDialog()V
    .locals 3

    .prologue
    .line 4204
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4208
    :goto_0
    return-void

    .line 4205
    :catch_0
    move-exception v0

    .line 4206
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private dismissProcessingDialog()V
    .locals 3

    .prologue
    .line 4212
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4216
    :goto_0
    return-void

    .line 4213
    :catch_0
    move-exception v0

    .line 4214
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private doDestroy()V
    .locals 7

    .prologue
    .line 3573
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/app/FilePickerCore;->saveCarouselDefaultTabPreferences(Ljava/lang/String;)V

    .line 3574
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v4

    invoke-static {v4}, Lcom/htc/app/FilePickerUtil;->isLocalDataSourceType(I)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/htc/app/FilePickerCore;->saveCurrentDataSourceIsLocalPreferences(Z)V

    .line 3577
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v4, :cond_0

    .line 3578
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3579
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 3582
    :cond_0
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v4, :cond_1

    .line 3583
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3584
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 3587
    :cond_1
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v4, :cond_2

    .line 3588
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3589
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 3592
    :cond_2
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v4, :cond_3

    .line 3593
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->clear()V

    .line 3596
    :cond_3
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v4, :cond_4

    .line 3597
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->clear()V

    .line 3600
    :cond_4
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 3601
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    .line 3602
    .local v3, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getFolderAdapter()Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v1

    .line 3603
    .local v1, adapter:Lcom/htc/app/FilePickerFolderAdapter;
    if-eqz v1, :cond_5

    .line 3604
    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter;->close()V

    .line 3605
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getAccountId()Ljava/lang/String;

    move-result-object v0

    .line 3606
    .local v0, accountId:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FilePickerFolderAdapter(DataSourceType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", accountId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")==> object number:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3613
    .end local v0           #accountId:Ljava/lang/String;
    .end local v1           #adapter:Lcom/htc/app/FilePickerFolderAdapter;
    .end local v3           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_6
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 3615
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    .line 3617
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v4, :cond_8

    .line 3618
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->clear()V

    .line 3619
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->close()V

    .line 3622
    :cond_8
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v4, :cond_9

    .line 3623
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->clearHandler()V

    .line 3625
    :cond_9
    return-void
.end method

.method private doScanFiles()V
    .locals 9

    .prologue
    .line 3172
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    .line 3175
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getFavoritesFragment()Lcom/htc/app/FilePickerFavoritesFragment;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3176
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getFavoritesFragment()Lcom/htc/app/FilePickerFavoritesFragment;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/htc/app/FilePickerFavoritesFragment;->NotifyToDoTask(I)V

    .line 3178
    :cond_0
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v5, :cond_1

    .line 3179
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerListAdapter;->startScanFiles()V

    .line 3182
    :cond_1
    :try_start_0
    new-instance v2, Lcom/htc/app/FileScanner;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/htc/app/FileScanner;-><init>(Landroid/content/Context;Lcom/htc/app/FilePickerListAdapter;[Ljava/lang/String;Lcom/htc/app/FilePickerDBHelper;)V

    .line 3184
    .local v2, fileScannerOfFavorites:Lcom/htc/app/FileScanner;
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v2, v5}, Lcom/htc/app/FileScanner;->setFilePickerUtil(Lcom/htc/app/FilePickerUtil;)V

    .line 3185
    new-instance v1, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/app/FilePickerCore$10;

    invoke-direct {v5, p0, v2}, Lcom/htc/app/FilePickerCore$10;-><init>(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FileScanner;)V

    invoke-direct {v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3192
    .local v1, favoriteThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3199
    .end local v1           #favoriteThread:Ljava/lang/Thread;
    .end local v2           #fileScannerOfFavorites:Lcom/htc/app/FileScanner;
    :goto_0
    :try_start_1
    new-instance v3, Lcom/htc/app/FileScanner;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/htc/app/FileScanner;-><init>(Landroid/content/Context;Lcom/htc/app/FilePickerListAdapter;[Ljava/lang/String;Lcom/htc/app/FilePickerDBHelper;)V

    .line 3201
    .local v3, fileScannerOfRecent:Lcom/htc/app/FileScanner;
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v3, v5}, Lcom/htc/app/FileScanner;->setFilePickerUtil(Lcom/htc/app/FilePickerUtil;)V

    .line 3202
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mRecentFiles:[Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mRecentFilesTime:[J

    invoke-virtual {v3, v5, v6}, Lcom/htc/app/FileScanner;->setRecentFiles([Ljava/lang/String;[J)V

    .line 3203
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/app/FilePickerCore$11;

    invoke-direct {v5, p0, v3}, Lcom/htc/app/FilePickerCore$11;-><init>(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FileScanner;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3210
    .local v4, recentThread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3215
    .end local v3           #fileScannerOfRecent:Lcom/htc/app/FileScanner;
    .end local v4           #recentThread:Ljava/lang/Thread;
    :goto_1
    return-void

    .line 3193
    :catch_0
    move-exception v0

    .line 3194
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "FilePickerWithDB"

    const-string v6, "#### favoriteThread exception"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3211
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3212
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "FilePickerWithDB"

    const-string v6, "#### recentThread exception"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    .locals 6
    .parameter "dataSourceType"
    .parameter "accountId"

    .prologue
    .line 2190
    const/4 v4, 0x0

    .line 2191
    .local v4, result:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 2192
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    .line 2193
    :cond_0
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2194
    packed-switch p1, :pswitch_data_0

    .line 2224
    :cond_1
    :pswitch_0
    return-object v4

    .line 2198
    :pswitch_1
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    .line 2199
    .local v3, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getDataSourceType()I

    move-result v2

    .line 2200
    .local v2, moreExpandDataSourceType:I
    if-ne v2, p1, :cond_2

    .line 2201
    move-object v4, v3

    goto :goto_0

    .line 2207
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #moreExpandDataSourceType:I
    .end local v3           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :pswitch_2
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    .line 2208
    .restart local v3       #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getDataSourceType()I

    move-result v2

    .line 2209
    .restart local v2       #moreExpandDataSourceType:I
    if-ne v2, p1, :cond_3

    .line 2210
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getAccountId()Ljava/lang/String;

    move-result-object v1

    .line 2211
    .local v1, moreExpandAccountId:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 2212
    move-object v4, v3

    goto :goto_1

    .line 2214
    :cond_4
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2215
    move-object v4, v3

    goto :goto_1

    .line 2194
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 4039
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4040
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4042
    :cond_0
    return-void
.end method

.method private getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;
    .locals 1
    .parameter "isLocal"

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, adapter:Lcom/htc/app/FilePickerAppDropDownAdapter;
    if-eqz p1, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getAppDropDownLocalAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v0

    .line 642
    :goto_0
    return-object v0

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getAppDropDownCloudAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method private getAppDropDownCloudAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;
    .locals 5

    .prologue
    .line 620
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    if-nez v0, :cond_0

    .line 621
    new-instance v0, Lcom/htc/app/FilePickerAppDropDownAdapter;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/app/FilePickerAppDropDownAdapter;-><init>(Landroid/content/Context;Lcom/htc/app/FilePickerUtil;Ljava/lang/Boolean;Lcom/htc/app/FilePickerCloudHelper;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    return-object v0
.end method

.method private getAppDropDownLocalAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;
    .locals 5

    .prologue
    .line 628
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    if-nez v0, :cond_0

    .line 629
    new-instance v0, Lcom/htc/app/FilePickerAppDropDownAdapter;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/app/FilePickerAppDropDownAdapter;-><init>(Landroid/content/Context;Lcom/htc/app/FilePickerUtil;Ljava/lang/Boolean;Lcom/htc/app/FilePickerCloudHelper;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    return-object v0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mContext:Landroid/content/Context;

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method private getBundle([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "outputs"
    .parameter "serviceNames"
    .parameter "accountIds"

    .prologue
    .line 819
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 820
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 821
    const-string v1, "CloudServiceType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 822
    const-string v1, "CloudServiceAccountName"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 823
    const-string v1, "sort_type"

    iget v2, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 824
    const-string v1, "sort_order"

    iget v2, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 825
    return-object v0
.end method

.method private getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;
    .locals 4

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lcom/htc/app/FilePickerCloudHelper;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/app/FilePickerCloudHelper;-><init>(Landroid/content/Context;ZLcom/htc/app/FilePickerUtil;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    .line 520
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper;->isCloudHelperEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    return-object v0
.end method

.method private getFileCountString(I)Ljava/lang/String;
    .locals 4
    .parameter "count"

    .prologue
    .line 3765
    const/4 v0, 0x0

    .line 3766
    .local v0, text:Ljava/lang/String;
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 3767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20403e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3771
    :goto_0
    return-object v0

    .line 3769
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20403e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getFolderViewInstance()Landroid/view/ViewGroup;
    .locals 5

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 506
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x209002b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 510
    .local v0, filePickerFolderView:Landroid/view/ViewGroup;
    new-instance v2, Lcom/htc/widget/HtcOverlapLayout;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcOverlapLayout;-><init>(Landroid/content/Context;)V

    .line 511
    .local v2, overlayLayout:Lcom/htc/widget/HtcOverlapLayout;
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcOverlapLayout;->addView(Landroid/view/View;)V

    .line 512
    return-object v2
.end method

.method private getLandingView()Landroid/view/View;
    .locals 5

    .prologue
    .line 489
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerLandingView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 492
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x209002e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, filePickerLandingView:Landroid/view/View;
    new-instance v2, Lcom/htc/widget/HtcOverlapLayout;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcOverlapLayout;-><init>(Landroid/content/Context;)V

    .line 496
    .local v2, overlayLayout:Lcom/htc/widget/HtcOverlapLayout;
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcOverlapLayout;->addView(Landroid/view/View;)V

    .line 497
    iput-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilePickerLandingView:Landroid/view/View;

    .line 499
    .end local v0           #filePickerLandingView:Landroid/view/View;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #overlayLayout:Lcom/htc/widget/HtcOverlapLayout;
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerLandingView:Landroid/view/View;

    return-object v3
.end method

.method private getListAdapterSelectBundle(Lcom/htc/app/FilePickerListAdapter;)Landroid/os/Bundle;
    .locals 9
    .parameter "adapter"

    .prologue
    const/4 v8, 0x0

    .line 3259
    new-array v4, v8, [Ljava/lang/String;

    .line 3260
    .local v4, output:[Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/String;

    .line 3261
    .local v0, accountIds:[Ljava/lang/String;
    new-array v6, v8, [Ljava/lang/String;

    .line 3262
    .local v6, serviceNames:[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 3263
    invoke-virtual {p1}, Lcom/htc/app/FilePickerListAdapter;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 3264
    .local v5, selectedItemInfoLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3265
    .local v7, size:I
    new-array v4, v7, [Ljava/lang/String;

    .line 3266
    new-array v0, v7, [Ljava/lang/String;

    .line 3267
    new-array v6, v7, [Ljava/lang/String;

    .line 3268
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 3269
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/app/ItemInfo;

    .line 3270
    .local v3, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    .line 3271
    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->getAccountId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v2

    .line 3272
    invoke-virtual {v3}, Lcom/htc/app/ItemInfo;->getServiceName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    .line 3268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3274
    .end local v3           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/app/FilePickerListAdapter;->resetAllChecked()V

    .line 3276
    .end local v2           #i:I
    .end local v5           #selectedItemInfoLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    .end local v7           #size:I
    :cond_1
    invoke-direct {p0, v4, v6, v0}, Lcom/htc/app/FilePickerCore;->getBundle([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3277
    .local v1, bundle:Landroid/os/Bundle;
    return-object v1
.end method

.method private getMainView()Landroid/view/View;
    .locals 3

    .prologue
    .line 478
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerMainView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 482
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x209002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerMainView:Landroid/view/View;

    .line 484
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerMainView:Landroid/view/View;

    return-object v1
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private hideDialog()V
    .locals 3

    .prologue
    .line 3338
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3342
    :goto_0
    return-void

    .line 3339
    :catch_0
    move-exception v0

    .line 3340
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private hideNoSdCard()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4107
    const v2, 0x20200bf

    invoke-direct {p0, v2}, Lcom/htc/app/FilePickerCore;->checkShowViewByTag(I)V

    .line 4108
    const v2, 0x20200c0

    invoke-direct {p0, v2}, Lcom/htc/app/FilePickerCore;->checkShowViewByTag(I)V

    .line 4109
    const v2, 0x20200c1

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 4111
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v2, :cond_1

    .line 4112
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v0

    .line 4113
    .local v0, dataSourceType:I
    invoke-static {v0}, Lcom/htc/app/FilePickerUtil;->isLocalDataSourceType(I)Z

    move-result v1

    .line 4114
    .local v1, isLocalDataSource:Z
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    if-eqz v2, :cond_2

    .line 4115
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v2, v4}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 4122
    .end local v0           #dataSourceType:I
    .end local v1           #isLocalDataSource:Z
    :cond_1
    :goto_0
    return-void

    .line 4116
    .restart local v0       #dataSourceType:I
    .restart local v1       #isLocalDataSource:Z
    :cond_2
    iget-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-eqz v2, :cond_3

    .line 4117
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v2, v4}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0

    .line 4119
    :cond_3
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerCore;->getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0
.end method

.method private hideSearchBar()V
    .locals 3

    .prologue
    .line 4050
    const-string v1, "Tab_Type"

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4051
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x20200cc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4052
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 4053
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_0

    .line 4054
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 4055
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4061
    .end local v0           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-eqz v1, :cond_1

    .line 4062
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerActionBarExtController;->hideSearchBarMode()V

    .line 4063
    :cond_1
    return-void
.end method

.method private initialActionBarExtCtrl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 279
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-nez v1, :cond_0

    .line 280
    new-instance v1, Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/app/FilePickerActionBarExtController;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    .line 282
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mAppBackUpOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActionBarExtController;->setActionBarContainerBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20403e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerActionBarExtController;->setMainTitle(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1, v4}, Lcom/htc/app/FilePickerActionBarExtController;->setActionBarContainerBackUpEnabled(Z)V

    .line 289
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 290
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mAppSearchContainerBackUpOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActionBarExtController;->setSearchContainerBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-direct {p0, v4}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 295
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initialCarouselFragment(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x20200bf

    const/16 v4, 0x8

    .line 248
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 250
    .local v1, fm:Landroid/app/FragmentManager;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadCarouselDefaultTabPreferences()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 251
    if-nez p1, :cond_2

    .line 252
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 253
    .local v2, tx:Landroid/app/FragmentTransaction;
    new-instance v0, Lcom/htc/app/FilePickerCarousel;

    invoke-direct {v0}, Lcom/htc/app/FilePickerCarousel;-><init>()V

    .line 254
    .local v0, carousel:Lcom/htc/app/FilePickerCarousel;
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/app/FilePickerCarousel;->setDefaultTab(Ljava/lang/String;)V

    .line 257
    :cond_0
    invoke-virtual {v0, v4}, Lcom/htc/app/FilePickerCarousel;->requestCarouselFeature(I)Z

    .line 258
    invoke-virtual {v2, v5, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 259
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 270
    .end local v2           #tx:Landroid/app/FragmentTransaction;
    :cond_1
    :goto_0
    return-void

    .line 261
    .end local v0           #carousel:Lcom/htc/app/FilePickerCarousel;
    :cond_2
    invoke-virtual {v1, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerCarousel;

    .line 263
    .restart local v0       #carousel:Lcom/htc/app/FilePickerCarousel;
    if-eqz v0, :cond_1

    .line 264
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 265
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/app/FilePickerCarousel;->setDefaultTab(Ljava/lang/String;)V

    .line 267
    :cond_3
    invoke-virtual {v0, v4}, Lcom/htc/app/FilePickerCarousel;->requestCarouselFeature(I)Z

    goto :goto_0
.end method

.method private initialEmptyViewOfFavoritesView()V
    .locals 4

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x20200a8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 706
    .local v1, favoritesViewLayout:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 707
    const v2, 0x20200aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 708
    .local v0, emptyView:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    .end local v0           #emptyView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initialEmptyViewOfRecentView()V
    .locals 4

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x20200c9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 714
    .local v1, recentViewLayout:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 715
    const v2, 0x20200aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 716
    .local v0, emptyView:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    .end local v0           #emptyView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initialEmptyViewOfTypeView()V
    .locals 4

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x20200cb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 698
    .local v1, typeViewLayout:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 699
    const v2, 0x20200aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 700
    .local v0, emptyView:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    .end local v0           #emptyView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initialIntentValue(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 346
    const-string v4, "FILE_PICKER_MODE_ENABLED"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsFilePickerModeEnabled:Z

    .line 349
    const-string v4, "FOLDER_PICKER_MODE_ENABLED"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsFolderPickerModeEnabled:Z

    .line 352
    const-string v4, "returnDropBoxShareLinkEnable"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z

    .line 354
    const-string v4, "onlyShowCanWriteFolder"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsOnlyShowCanWriteFolder:Z

    .line 356
    const-string v4, "folderItemSelectEnabled"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->isFolderItemSelectedEnabled:Z

    .line 359
    const-string v4, "recent_files"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentFiles:[Ljava/lang/String;

    .line 360
    const-string v4, "recent_time"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentFilesTime:[J

    .line 362
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentFiles:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 363
    const-string v4, "FilePickerWithDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#### BUNDLE: mRecentFiles.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mRecentFiles:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentFiles:[Ljava/lang/String;

    array-length v1, v4

    .line 365
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 366
    const-string v4, "FilePickerWithDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#### BUNDLE: mRecentFiles["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mRecentFiles:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_0
    const-string v4, "FilePickerWithDB"

    const-string v5, "#### BUNDLE: mRecentFiles == null "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_1
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentFilesTime:[J

    if-eqz v4, :cond_3

    .line 373
    const-string v4, "FilePickerWithDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#### BUNDLE: mRecentFilesTime.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mRecentFilesTime:[J

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_1
    const-string v4, "LocalDataSourceEnable"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    .line 381
    const-string v4, "CloudFunctionEnabled"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    .line 384
    const-string v4, "CloudServiceType"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceNamesFromIntentRequest:[Ljava/lang/String;

    .line 386
    const-string v4, "CloudServiceAccountName"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mCloudServiceAccountFromIntentRequest:[Ljava/lang/String;

    .line 389
    const-string v4, "UsbConnectionMode"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/app/FilePickerCore;->mUsbConnetionViewMode:I

    .line 391
    iget v4, p0, Lcom/htc/app/FilePickerCore;->mUsbConnetionViewMode:I

    if-eq v4, v7, :cond_4

    :goto_2
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    .line 392
    const-string v2, "selectionType"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    .line 393
    const-string v2, "hint_search_text"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerCore;->mHintText:Ljava/lang/String;

    .line 394
    const-string v2, "filter"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    .line 396
    const-string v2, "application_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerCore;->mAppName:Ljava/lang/String;

    .line 397
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    const-string v2, "title_string_id"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 399
    const-string v2, "no_file_found_text"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    const-string v2, "root_path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    const-string v2, "remove_file_mode"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 402
    const-string v2, "sort_type"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 403
    const-string v2, "sort_order"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 405
    iget-boolean v2, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 406
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_APP_NAME="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_2
    return-void

    .line 376
    :cond_3
    const-string v4, "FilePickerWithDB"

    const-string v5, "#### BUNDLE: mRecentFilesTime == null "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    move v2, v3

    .line 391
    goto :goto_2
.end method

.method private initialLocalPickerAdapter()V
    .locals 7

    .prologue
    .line 1177
    new-instance v0, Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/app/FilePickerListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerUtil;Lcom/htc/app/FilePickerDBHelper;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 1180
    new-instance v0, Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/app/FilePickerListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerUtil;Lcom/htc/app/FilePickerDBHelper;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 1182
    new-instance v0, Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/app/FilePickerListAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerUtil;Lcom/htc/app/FilePickerDBHelper;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 1186
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TypeAdapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecentAdapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FavoritesAdapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_0
    new-instance v0, Lcom/htc/app/FileSorter;

    invoke-direct {v0}, Lcom/htc/app/FileSorter;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 1194
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 1195
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 1196
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setFileSorter(Lcom/htc/app/FileSorter;)V

    .line 1197
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    const-string v1, "Tab_Type"

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setAdapterType(Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    const-string v1, "Tab_Recent"

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setAdapterType(Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    const-string v1, "Tab_Favorites"

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setAdapterType(Ljava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setFileSorter(Lcom/htc/app/FileSorter;)V

    .line 1203
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setFileSorter(Lcom/htc/app/FileSorter;)V

    .line 1207
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsShowPath:Z

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->groupByPath(Z)V

    .line 1208
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setDataSetChangedListener(Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;)V

    .line 1210
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mRecentDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setDataSetChangedListener(Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;)V

    .line 1211
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFavoriteDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setDataSetChangedListener(Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;)V

    .line 1215
    return-void
.end method

.method private initialLocalPickerScanner()V
    .locals 5

    .prologue
    .line 1221
    new-instance v0, Lcom/htc/app/FileScanner;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/app/FileScanner;-><init>(Landroid/content/Context;Lcom/htc/app/FilePickerListAdapter;[Ljava/lang/String;Lcom/htc/app/FilePickerDBHelper;)V

    .line 1224
    .local v0, fileScanner:Lcom/htc/app/FileScanner;
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v0, v1}, Lcom/htc/app/FileScanner;->setFilePickerUtil(Lcom/htc/app/FilePickerUtil;)V

    .line 1229
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/FileScanner;->setFilePickerCloudHelper(Lcom/htc/app/FilePickerCloudHelper;)V

    .line 1231
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerListAdapter;->setFileScanner(Lcom/htc/app/FileScanner;)V

    .line 1233
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FileScanner;->setFileSorter(Lcom/htc/app/FileSorter;)V

    .line 1236
    return-void
.end method

.method private initialSettings()V
    .locals 3

    .prologue
    .line 2815
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->initStringDescription()V

    .line 2817
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mSelectedFiles:Ljava/util/ArrayList;

    .line 2821
    :try_start_0
    new-instance v1, Lcom/htc/app/FilePickerDBHelper;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/app/FilePickerDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2836
    :goto_0
    return-void

    .line 2822
    :catch_0
    move-exception v0

    .line 2823
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FilePickerWithDB"

    const-string v2, "#### INIT FilePickerDBHelper Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2825
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    goto :goto_0
.end method

.method private initialSharedPreferences()V
    .locals 4

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadCurrentDataSourceIsLocalPreferences()Z

    move-result v0

    .line 316
    .local v0, currentDataSourceIsLocal:Z
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-nez v1, :cond_0

    .line 317
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The LocalDataSourceItems and CloudDataSource could not disable at the same time!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_0
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-nez v1, :cond_4

    .line 320
    const/4 v0, 0x0

    .line 325
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadSortTypePreferences()I

    move-result v1

    iput v1, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    .line 326
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadSortOrderPreferences()I

    move-result v1

    iput v1, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    .line 327
    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    iget v2, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-static {v1, v2}, Lcom/htc/app/FilePickerUtil;->getSortSelectedItemId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/app/FilePickerCore;->mSortSelectedItem:I

    .line 329
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFilePickerUtil: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_2
    if-eqz v0, :cond_5

    .line 333
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadLocalDataSourceTypePreferences()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 337
    :goto_1
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 338
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-eqz v1, :cond_3

    .line 339
    const-string v1, "Tab_NoneCarousel"

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 342
    :cond_3
    return-void

    .line 321
    :cond_4
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-nez v1, :cond_1

    .line 322
    const/4 v0, 0x1

    goto :goto_0

    .line 335
    :cond_5
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadCloudDataSourceTypePreferences()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    goto :goto_1
.end method

.method private launchCloudFilePicker()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1345
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLoadingPage()V

    .line 1346
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->unregisterSdcardReceiver()V

    .line 1347
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v7}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v3

    .line 1348
    .local v3, dataSourceType:I
    const v7, 0x20200c3

    invoke-direct {p0, v7}, Lcom/htc/app/FilePickerCore;->removeAllChildView(I)V

    .line 1350
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->checkActionBarContainerBackUpEnabled()V

    .line 1351
    invoke-direct {p0, v9}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 1353
    iget-boolean v7, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-eqz v7, :cond_0

    .line 1354
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20403d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1355
    .local v6, title:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v6}, Lcom/htc/app/FilePickerActionBarExtController;->setMainTitle(Ljava/lang/String;)V

    .line 1356
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v10}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1357
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v10}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 1375
    .end local v6           #title:Ljava/lang/String;
    :goto_0
    const v7, 0x20200c4

    const/16 v8, 0x8

    invoke-direct {p0, v7, v8}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1376
    const v7, 0x20200c2

    invoke-direct {p0, v7, v9}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1377
    const/4 v7, 0x7

    invoke-direct {p0, v7}, Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V

    .line 1378
    return-void

    .line 1359
    :cond_0
    invoke-direct {p0, v3}, Lcom/htc/app/FilePickerCore;->setMainTitle(I)V

    .line 1360
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v1

    .line 1361
    .local v1, accountIds:[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1362
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 1363
    .local v0, accountId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v7

    invoke-virtual {v7, v3, v0}, Lcom/htc/app/FilePickerCloudHelper;->isSignIn(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1364
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v0}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1371
    .end local v0           #accountId:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    invoke-direct {p0, v9}, Lcom/htc/app/FilePickerCore;->getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/app/FilePickerAppDropDownAdapter;->refreshAppListItems()V

    .line 1372
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-direct {p0, v9}, Lcom/htc/app/FilePickerCore;->getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0

    .line 1367
    .restart local v0       #accountId:Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v10}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1362
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private launchCloudFolderPicker()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1299
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLoadingPage()V

    .line 1300
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->unregisterSdcardReceiver()V

    .line 1301
    const v8, 0x20200c4

    const/16 v9, 0x8

    invoke-direct {p0, v8, v9}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1302
    const v8, 0x20200c2

    invoke-direct {p0, v8, v10}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1303
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v8}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v3

    .line 1304
    .local v3, dataSourceType:I
    const v8, 0x20200c3

    invoke-direct {p0, v8}, Lcom/htc/app/FilePickerCore;->removeAllChildView(I)V

    .line 1306
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->checkActionBarContainerBackUpEnabled()V

    .line 1307
    invoke-direct {p0, v10}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 1309
    iget-boolean v8, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-eqz v8, :cond_0

    .line 1310
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20403d9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1311
    .local v7, title:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v7}, Lcom/htc/app/FilePickerActionBarExtController;->setMainTitle(Ljava/lang/String;)V

    .line 1312
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v11}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1313
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v11}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 1330
    .end local v7           #title:Ljava/lang/String;
    :goto_0
    new-instance v6, Lcom/htc/app/FilePickerCore$6;

    new-instance v8, Lcom/htc/app/FilePickerCore$5;

    invoke-direct {v8, p0}, Lcom/htc/app/FilePickerCore$5;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-direct {v6, p0, v8}, Lcom/htc/app/FilePickerCore$6;-><init>(Lcom/htc/app/FilePickerCore;Ljava/lang/Runnable;)V

    .line 1340
    .local v6, thread:Ljava/lang/Thread;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1341
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1342
    return-void

    .line 1315
    .end local v6           #thread:Ljava/lang/Thread;
    :cond_0
    invoke-direct {p0, v3}, Lcom/htc/app/FilePickerCore;->setMainTitle(I)V

    .line 1316
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v1

    .line 1317
    .local v1, accountIds:[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1318
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 1319
    .local v0, accountId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v8

    invoke-virtual {v8, v3, v0}, Lcom/htc/app/FilePickerCloudHelper;->isSignIn(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1320
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v0}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1327
    .end local v0           #accountId:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    invoke-direct {p0, v10}, Lcom/htc/app/FilePickerCore;->getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/app/FilePickerAppDropDownAdapter;->refreshAppListItems()V

    .line 1328
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-direct {p0, v10}, Lcom/htc/app/FilePickerCore;->getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_0

    .line 1323
    .restart local v0       #accountId:Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v8, v11}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1318
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private launchLocalPicker()V
    .locals 2

    .prologue
    .line 1382
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLoadingPage()V

    .line 1385
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->registerSdcardReceiver()V

    .line 1388
    const v0, 0x20200c4

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1391
    const v0, 0x20200be

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1394
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialLocalPickerAdapter()V

    .line 1397
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialLocalPickerScanner()V

    .line 1400
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLocalFilePickerView()V

    .line 1402
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->loadFiles()V

    .line 1403
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 1404
    return-void
.end method

.method private launchUsbConnectionPicker()V
    .locals 2

    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLoadingPage()V

    .line 1409
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->registerSdcardReceiver()V

    .line 1410
    const v0, 0x20200c4

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1411
    const v0, 0x20200be

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1412
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V

    .line 1413
    return-void
.end method

.method private loadCarouselDefaultTabPreferences()Ljava/lang/String;
    .locals 5

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "FilePickerPreference"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 973
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_filepicker_carousel_default_tab"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method private loadCloudDataSourceTypePreferences()I
    .locals 6

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "FilePickerPreference"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 980
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/FilePickerCloudHelper;->getCloudDefaultDateSourceType()I

    move-result v1

    .line 981
    .local v1, defaultCloudDateSourceType:I
    const-string v3, "pref_key_filepicker_cloud_files_scope_type"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 984
    .local v0, dataSourceType:I
    return v0
.end method

.method private loadCurrentDataSourceIsLocalPreferences()Z
    .locals 4

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "FilePickerPreference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 936
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "CurrentAppAdapterIsLocalMode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private loadFiles()V
    .locals 8

    .prologue
    const v7, 0x20400a0

    const v6, 0x20401f9

    const/16 v5, 0xf

    .line 3218
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v2

    .line 3219
    .local v2, bInternalStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v0

    .line 3221
    .local v0, bExternalStorageAvailable:Z
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 3253
    :goto_0
    return-void

    .line 3223
    :sswitch_0
    if-eqz v2, :cond_0

    .line 3224
    invoke-direct {p0, v5}, Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V

    goto :goto_0

    .line 3226
    :cond_0
    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerCore;->showNoSdCard(I)V

    goto :goto_0

    .line 3230
    :sswitch_1
    if-eqz v0, :cond_1

    .line 3231
    invoke-direct {p0, v5}, Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V

    goto :goto_0

    .line 3233
    :cond_1
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageShared()Z

    move-result v1

    .line 3234
    .local v1, bExternalStorageShared:Z
    if-eqz v1, :cond_2

    .line 3235
    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerCore;->showNoSdCard(I)V

    goto :goto_0

    .line 3237
    :cond_2
    invoke-direct {p0, v7}, Lcom/htc/app/FilePickerCore;->showNoSdCard(I)V

    goto :goto_0

    .line 3241
    .end local v1           #bExternalStorageShared:Z
    :sswitch_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    .line 3242
    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V

    goto :goto_0

    .line 3244
    :cond_4
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageShared()Z

    move-result v1

    .line 3245
    .restart local v1       #bExternalStorageShared:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageShared()Z

    move-result v3

    .line 3246
    .local v3, bInternalStorageShared:Z
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    .line 3247
    :cond_5
    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerCore;->showNoSdCard(I)V

    goto :goto_0

    .line 3249
    :cond_6
    invoke-direct {p0, v7}, Lcom/htc/app/FilePickerCore;->showNoSdCard(I)V

    goto :goto_0

    .line 3221
    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_2
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method private loadLocalDataSourceTypePreferences()I
    .locals 6

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "FilePickerPreference"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 949
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getLocalDefaultDateSourceType()I

    move-result v1

    .line 950
    .local v1, defaultDateSourceType:I
    const-string v3, "pref_key_filepicker_local_files_scope_type"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 953
    .local v0, dateSourceType:I
    return v0
.end method

.method private loadSortOrderPreferences()I
    .locals 5

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "FilePickerPreference"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1005
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "sort_order"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1006
    .local v1, sortOrder:I
    return v1
.end method

.method private loadSortTypePreferences()I
    .locals 5

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "FilePickerPreference"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 998
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "sort_type"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 999
    .local v1, sortType:I
    return v1
.end method

.method private notifyTextChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3787
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x20200cc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerListView;

    .line 3789
    .local v0, typeListView:Lcom/htc/app/FilePickerListView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_0

    .line 3790
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/htc/app/FilePickerListView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 3792
    :cond_0
    return-void
.end method

.method private notifyTextChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    const/4 v3, 0x0

    .line 3795
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x20200cc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerListView;

    .line 3797
    .local v0, typeListView:Lcom/htc/app/FilePickerListView;
    if-eqz v0, :cond_0

    .line 3798
    invoke-virtual {v0, p1, v3, v3, v3}, Lcom/htc/app/FilePickerListView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 3800
    :cond_0
    return-void
.end method

.method private onResult(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 3749
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerActivity;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerActivity;->onResult(Landroid/os/Bundle;)V

    .line 3750
    return-void
.end method

.method private onResult([Ljava/lang/String;II)V
    .locals 1
    .parameter "output"
    .parameter "sortType"
    .parameter "sortOrder"

    .prologue
    .line 3745
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/FilePickerActivity;->onResult([Ljava/lang/String;II)V

    .line 3746
    return-void
.end method

.method private performAllViewActionModeFinish()V
    .locals 8

    .prologue
    .line 2349
    const/4 v6, 0x3

    new-array v1, v6, [Lcom/htc/app/FilePickerListAdapter;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    aput-object v7, v1, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    aput-object v7, v1, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    aput-object v7, v1, v6

    .line 2350
    .local v1, adapters:[Lcom/htc/app/FilePickerListAdapter;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/app/FilePickerListAdapter;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 2351
    .local v0, adapter:Lcom/htc/app/FilePickerListAdapter;
    if-eqz v0, :cond_0

    .line 2352
    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->resetAllChecked()V

    .line 2353
    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    .line 2354
    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->performActionModeFinish()V

    .line 2350
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2357
    .end local v0           #adapter:Lcom/htc/app/FilePickerListAdapter;
    :cond_1
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2358
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->MoreExpanedObjectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    .line 2359
    .local v5, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-virtual {v5}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getFolderAdapter()Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v0

    .line 2360
    .local v0, adapter:Lcom/htc/app/FilePickerFolderAdapter;
    if-eqz v0, :cond_2

    .line 2361
    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter;->resetAllChecked()V

    .line 2362
    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter;->notifyDataSetChanged()V

    .line 2363
    invoke-virtual {v0}, Lcom/htc/app/FilePickerFolderAdapter;->performActionModeFinish()V

    goto :goto_1

    .line 2367
    .end local v0           #adapter:Lcom/htc/app/FilePickerFolderAdapter;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_3
    return-void
.end method

.method private performDoneButtonOnClickListenerClick()V
    .locals 8

    .prologue
    .line 3282
    iget v6, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3284
    :cond_0
    const/4 v5, 0x0

    .line 3285
    .local v5, output:[Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v6, :cond_1

    .line 3286
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3288
    :cond_1
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v6, :cond_2

    .line 3289
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3290
    :cond_2
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v6, :cond_3

    .line 3291
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3293
    :cond_3
    const-string v6, "Tab_Recent"

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3294
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerCore;->getListAdapterSelectBundle(Lcom/htc/app/FilePickerListAdapter;)Landroid/os/Bundle;

    move-result-object v1

    .line 3295
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "output"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3296
    iget v6, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    iget v7, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    .line 3297
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerCore;->onResult(Landroid/os/Bundle;)V

    .line 3298
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->finish()V

    .line 3334
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v5           #output:[Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 3299
    .restart local v5       #output:[Ljava/lang/String;
    :cond_5
    const-string v6, "Tab_Favorites"

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3300
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerCore;->getListAdapterSelectBundle(Lcom/htc/app/FilePickerListAdapter;)Landroid/os/Bundle;

    move-result-object v1

    .line 3301
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v6, "output"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3302
    iget v6, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    iget v7, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    .line 3303
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerCore;->onResult(Landroid/os/Bundle;)V

    .line 3304
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->finish()V

    goto :goto_0

    .line 3305
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_6
    const-string v6, "Tab_Type"

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3306
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerCore;->getListAdapterSelectBundle(Lcom/htc/app/FilePickerListAdapter;)Landroid/os/Bundle;

    move-result-object v1

    .line 3307
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v6, "output"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3308
    iget v6, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    iget v7, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    .line 3309
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerCore;->onResult(Landroid/os/Bundle;)V

    .line 3310
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->finish()V

    goto :goto_0

    .line 3313
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_7
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v2

    .line 3314
    .local v2, dataSourceType:I
    const/4 v4, 0x0

    .line 3315
    .local v4, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v6, v2}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v0

    .line 3316
    .local v0, accounts:[Ljava/lang/String;
    if-eqz v0, :cond_a

    array-length v6, v0

    if-lez v6, :cond_a

    .line 3317
    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-direct {p0, v2, v6}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v4

    .line 3321
    :goto_1
    const/4 v3, 0x0

    .line 3322
    .local v3, moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    if-eqz v4, :cond_8

    .line 3323
    invoke-virtual {v4}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getFolderAdapter()Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v3

    .line 3325
    :cond_8
    invoke-virtual {v3}, Lcom/htc/app/FilePickerFolderAdapter;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    .line 3326
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    if-nez v6, :cond_9

    .line 3327
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    .line 3329
    :cond_9
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->performOnResultAndFinishTask()V

    .line 3330
    if-eqz v3, :cond_4

    .line 3331
    invoke-virtual {v3}, Lcom/htc/app/FilePickerFolderAdapter;->resetAllChecked()V

    goto/16 :goto_0

    .line 3319
    .end local v3           #moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    :cond_a
    const/4 v6, 0x0

    invoke-direct {p0, v2, v6}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v4

    goto :goto_1
.end method

.method private performDropDownItemClick(Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;)V
    .locals 4
    .parameter "appListItem"

    .prologue
    const/4 v3, 0x0

    .line 724
    invoke-virtual {p1}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getDataSourceType()I

    move-result v0

    .line 726
    .local v0, itemDataSourceType:I
    packed-switch v0, :pswitch_data_0

    .line 773
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 730
    :pswitch_1
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 732
    const-string v1, "Tab_Type"

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 733
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialEmptyViewOfTypeView()V

    .line 735
    :cond_1
    const-string v1, "Tab_Favorites"

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialEmptyViewOfFavoritesView()V

    .line 738
    :cond_2
    const-string v1, "Tab_Recent"

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 739
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialEmptyViewOfRecentView()V

    .line 741
    :cond_3
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 742
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->setMainTitle(I)V

    .line 743
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->saveLocalDataSourceTypePreferences(I)V

    .line 744
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchLocalPicker()V

    goto :goto_0

    .line 749
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->setMainTitle(I)V

    .line 750
    invoke-virtual {p1}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->isSignIn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 752
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 755
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getSubTextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/app/FilePickerCloudHelper;->isSignIn(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 757
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {p1}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->getSubTextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 766
    :goto_1
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 767
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->saveCloudDataSourceTypePreferences(I)V

    .line 768
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFilePicker()V

    goto :goto_0

    .line 759
    :cond_4
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 762
    :cond_5
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 763
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerCloudHelper;->signIn(I)V

    .line 764
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getAppDropDownCloudAdapter()Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->refreshAppListItems()V

    goto :goto_1

    .line 726
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private performOnResultAndFinishTask()V
    .locals 21

    .prologue
    .line 881
    const/4 v15, 0x0

    .line 882
    .local v15, output:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 883
    .local v4, accountIds:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 884
    .local v16, serviceNames:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 885
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    .line 886
    const/4 v11, 0x0

    .line 887
    .local v11, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 888
    .local v17, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Lcom/htc/app/FolderItemInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/htc/app/FolderItemInfo;

    .line 890
    .local v10, folderItemInfos:[Lcom/htc/app/FolderItemInfo;
    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    .line 891
    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    .line 892
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 893
    if-eqz v10, :cond_3

    .line 894
    move-object v5, v10

    .local v5, arr$:[Lcom/htc/app/FolderItemInfo;
    array-length v14, v5

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v14, :cond_3

    aget-object v9, v5, v12

    .line 895
    .local v9, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v9}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v13

    .line 896
    .local v13, isCloudItem:Z
    invoke-virtual {v9}, Lcom/htc/app/FolderItemInfo;->getServiceName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v11

    .line 897
    invoke-virtual {v9}, Lcom/htc/app/FolderItemInfo;->getAccountId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v4, v11

    .line 898
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    if-eqz v13, :cond_0

    .line 899
    invoke-virtual {v9}, Lcom/htc/app/FolderItemInfo;->getItemDataSourceType()I

    move-result v7

    .line 900
    .local v7, cloudDataSourceType:I
    invoke-virtual {v9}, Lcom/htc/app/FolderItemInfo;->getCloudPath()Ljava/lang/String;

    move-result-object v8

    .line 901
    .local v8, cloudPath:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/htc/app/FolderItemInfo;->getAccountId()Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, accountId:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8, v3}, Lcom/htc/app/FilePickerCloudHelper;->getCloudShareLink(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v11

    .line 915
    .end local v3           #accountId:Ljava/lang/String;
    .end local v7           #cloudDataSourceType:I
    .end local v8           #cloudPath:Ljava/lang/String;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 894
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 905
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 906
    invoke-virtual {v9}, Lcom/htc/app/FolderItemInfo;->getCloudPath()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v11

    goto :goto_1

    .line 919
    .end local v5           #arr$:[Lcom/htc/app/FolderItemInfo;
    .end local v9           #folderItemInfo:Lcom/htc/app/FolderItemInfo;
    .end local v10           #folderItemInfos:[Lcom/htc/app/FolderItemInfo;
    .end local v11           #i:I
    .end local v12           #i$:I
    .end local v13           #isCloudItem:Z
    .end local v14           #len$:I
    .end local v17           #size:I
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 908
    .restart local v5       #arr$:[Lcom/htc/app/FolderItemInfo;
    .restart local v9       #folderItemInfo:Lcom/htc/app/FolderItemInfo;
    .restart local v10       #folderItemInfos:[Lcom/htc/app/FolderItemInfo;
    .restart local v11       #i:I
    .restart local v12       #i$:I
    .restart local v13       #isCloudItem:Z
    .restart local v14       #len$:I
    .restart local v17       #size:I
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 909
    invoke-virtual {v9}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v11

    goto :goto_1

    .line 911
    :cond_2
    invoke-virtual {v9}, Lcom/htc/app/FolderItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v11

    goto :goto_1

    .line 919
    .end local v5           #arr$:[Lcom/htc/app/FolderItemInfo;
    .end local v9           #folderItemInfo:Lcom/htc/app/FolderItemInfo;
    .end local v10           #folderItemInfos:[Lcom/htc/app/FolderItemInfo;
    .end local v11           #i:I
    .end local v12           #i$:I
    .end local v13           #isCloudItem:Z
    .end local v14           #len$:I
    .end local v17           #size:I
    :cond_3
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FilePickerCore;->mSortType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v15, v1, v2}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    .line 921
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v4}, Lcom/htc/app/FilePickerCore;->getBundle([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 922
    .local v6, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/app/FilePickerCore;->onResult(Landroid/os/Bundle;)V

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->finish()V

    .line 924
    return-void
.end method

.method private reStartToScan()V
    .locals 0

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->doStop()V

    .line 1167
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->doDestroy()V

    .line 1169
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->switchLayoutByPicker()V

    .line 1170
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 1171
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->doStart()V

    .line 1172
    return-void
.end method

.method private registerSdcardReceiver()V
    .locals 3

    .prologue
    .line 2780
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    if-nez v1, :cond_0

    .line 2781
    new-instance v1, Lcom/htc/app/FilePickerCore$SdcardListener;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerCore$SdcardListener;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v1, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    .line 2782
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2783
    .local v0, sdFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2784
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2785
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2786
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2787
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2788
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2789
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2790
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2791
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2792
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2793
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2794
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2795
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2797
    .end local v0           #sdFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private removeAllChildView(I)V
    .locals 3
    .parameter "parentResId"

    .prologue
    .line 2308
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2309
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 2310
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 2311
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2313
    :cond_0
    return-void
.end method

.method private saveCarouselDefaultTabPreferences(Ljava/lang/String;)V
    .locals 2
    .parameter "currentTab"

    .prologue
    .line 964
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_key_filepicker_carousel_default_tab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 966
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 968
    :cond_0
    return-void
.end method

.method private saveCloudDataSourceTypePreferences(I)V
    .locals 2
    .parameter "dataSourceType"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_key_filepicker_cloud_files_scope_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 959
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 961
    :cond_0
    return-void
.end method

.method private saveCurrentDataSourceIsLocalPreferences(Z)V
    .locals 2
    .parameter "isLocal"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "CurrentAppAdapterIsLocalMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 942
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 944
    :cond_0
    return-void
.end method

.method private saveLocalDataSourceTypePreferences(I)V
    .locals 2
    .parameter "showFilesScope"

    .prologue
    .line 927
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_key_filepicker_local_files_scope_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 929
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 931
    :cond_0
    return-void
.end method

.method private saveSortPreferences(II)V
    .locals 2
    .parameter "sortType"
    .parameter "sortOrder"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sort_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 990
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sort_order"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 991
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 993
    :cond_0
    return-void
.end method

.method private setListViewHeaderText(ILjava/lang/String;)V
    .locals 3
    .parameter "resId"
    .parameter "text"

    .prologue
    .line 3476
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FilePickerListView;

    .line 3477
    .local v1, listView:Lcom/htc/app/FilePickerListView;
    if-eqz v1, :cond_0

    .line 3478
    invoke-virtual {v1}, Lcom/htc/app/FilePickerListView;->getHeaderViewsCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 3479
    const v2, 0x20200c6

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemSeparator;

    .line 3481
    .local v0, htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 3484
    .end local v0           #htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    :cond_0
    return-void
.end method

.method private setMainTitle(I)V
    .locals 4
    .parameter "dataSourceType"

    .prologue
    .line 829
    const v1, 0x20403c8

    .line 830
    .local v1, titleId:I
    const/4 v2, 0x0

    .line 832
    .local v2, updated:Z
    packed-switch p1, :pswitch_data_0

    .line 859
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_0

    .line 860
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 862
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v3, v0}, Lcom/htc/app/FilePickerActionBarExtController;->setMainTitle(Ljava/lang/String;)V

    .line 865
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    return-void

    .line 834
    :pswitch_1
    const v1, 0x20403cc

    .line 835
    const/4 v2, 0x1

    .line 836
    goto :goto_0

    .line 838
    :pswitch_2
    sget-boolean v3, Lcom/htc/app/FilePickerUtil;->IsTabletDevice:Z

    if-eqz v3, :cond_1

    .line 839
    const v1, 0x20403de

    .line 843
    :goto_1
    const/4 v2, 0x1

    .line 844
    goto :goto_0

    .line 841
    :cond_1
    const v1, 0x20403df

    goto :goto_1

    .line 846
    :pswitch_3
    const v1, 0x20403c9

    .line 847
    const/4 v2, 0x1

    .line 848
    goto :goto_0

    .line 850
    :pswitch_4
    const v1, 0x20403ca

    .line 851
    const/4 v2, 0x1

    .line 852
    goto :goto_0

    .line 854
    :pswitch_5
    const v1, 0x20403c7

    .line 855
    const/4 v2, 0x1

    goto :goto_0

    .line 832
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setMenuItemVisibled(Landroid/view/Menu;Z)V
    .locals 3
    .parameter "menu"
    .parameter "visibled"

    .prologue
    .line 3065
    if-eqz p1, :cond_0

    .line 3066
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    .line 3067
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3068
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 3069
    .local v2, menuItem:Landroid/view/MenuItem;
    invoke-interface {v2, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3067
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3072
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #menuItem:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method private setViewToMainLayoutAndShow(ILandroid/view/View;)V
    .locals 6
    .parameter "parentResId"
    .parameter "childView"

    .prologue
    const/4 v5, 0x0

    .line 1502
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1503
    .local v3, viewParent:Landroid/view/ViewParent;
    if-eqz v3, :cond_0

    move-object v2, v3

    .line 1504
    check-cast v2, Landroid/view/ViewGroup;

    .line 1505
    .local v2, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1508
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getMainView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1509
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1510
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 1511
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1512
    :cond_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1513
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1518
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v5}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1519
    return-void

    .line 1516
    :cond_3
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setViewVisibilityAndTag(II)V
    .locals 4
    .parameter "resId"
    .parameter "visibility"

    .prologue
    .line 4066
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4067
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 4075
    :cond_0
    :goto_0
    return-void

    .line 4069
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 4070
    .local v1, viewVisibility:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4071
    .local v2, visibleTag:Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4072
    if-eq v1, p2, :cond_0

    .line 4073
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showCloudPickerView()V
    .locals 12

    .prologue
    const v11, 0x20200aa

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 2228
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v8}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    .line 2233
    .local v1, dataSourceType:I
    const/4 v6, 0x0

    .line 2234
    .local v6, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v8, v1}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v0

    .line 2235
    .local v0, accounts:[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v8, v0

    if-lez v8, :cond_3

    .line 2236
    aget-object v8, v0, v9

    invoke-direct {p0, v1, v8}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v6

    .line 2240
    :goto_0
    const/4 v3, 0x0

    .line 2241
    .local v3, filePickerFolderView:Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getFolderViewInstance()Landroid/view/ViewGroup;

    move-result-object v3

    .line 2243
    const v8, 0x20200b1

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcIconButton;

    .line 2245
    .local v7, noLoginBtn:Lcom/htc/widget/HtcIconButton;
    new-instance v8, Lcom/htc/app/FilePickerCore$8;

    invoke-direct {v8, p0}, Lcom/htc/app/FilePickerCore$8;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2253
    packed-switch v1, :pswitch_data_0

    .line 2262
    :goto_1
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2263
    .local v2, emptyView:Landroid/widget/TextView;
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2265
    const v8, 0x20200ae

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListView;

    .line 2267
    .local v4, moreExListView:Lcom/htc/widget/HtcListView;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2268
    const v8, 0x20200ac

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 2270
    .local v5, moreExpandViewLayout:Landroid/view/ViewGroup;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 2271
    if-eqz v5, :cond_0

    .line 2272
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2273
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #emptyView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 2274
    .restart local v2       #emptyView:Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 2275
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2279
    :cond_0
    if-nez v6, :cond_4

    .line 2280
    invoke-virtual {p0, v3, v1}, Lcom/htc/app/FilePickerCore;->getMoreExpanedObjectInstance(Landroid/view/ViewGroup;I)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v6

    .line 2281
    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerCore;->addMoreExpanedObjectToList(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    .line 2287
    :goto_2
    const v8, 0x20200c3

    invoke-direct {p0, v8, v3}, Lcom/htc/app/FilePickerCore;->setViewToMainLayoutAndShow(ILandroid/view/View;)V

    .line 2289
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->setNeedReLoad(Z)V

    .line 2290
    invoke-virtual {v6}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->updatePathOfFolderViewHeader()V

    .line 2295
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/htc/app/FilePickerCloudHelper;->hasAnyAccountSignIn(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2296
    #calls: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->loadFolders()V
    invoke-static {v6}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$1600(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    .line 2299
    :cond_1
    const-string v8, "Tab_NoneCarousel"

    invoke-direct {p0, v8}, Lcom/htc/app/FilePickerCore;->showViewByTab(Ljava/lang/String;)V

    .line 2300
    invoke-direct {p0, v3}, Lcom/htc/app/FilePickerCore;->checkShowNoLoginView(Landroid/view/View;)V

    .line 2301
    iget-boolean v8, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-nez v8, :cond_2

    .line 2302
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerCore;->saveCloudDataSourceTypePreferences(I)V

    .line 2304
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 2305
    return-void

    .line 2238
    .end local v2           #emptyView:Landroid/widget/TextView;
    .end local v3           #filePickerFolderView:Landroid/view/ViewGroup;
    .end local v4           #moreExListView:Lcom/htc/widget/HtcListView;
    .end local v5           #moreExpandViewLayout:Landroid/view/ViewGroup;
    .end local v7           #noLoginBtn:Lcom/htc/widget/HtcIconButton;
    :cond_3
    const/4 v8, 0x0

    invoke-direct {p0, v1, v8}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v6

    goto/16 :goto_0

    .line 2255
    .restart local v3       #filePickerFolderView:Landroid/view/ViewGroup;
    .restart local v7       #noLoginBtn:Lcom/htc/widget/HtcIconButton;
    :pswitch_0
    const v8, 0x20403d7

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcIconButton;->setText(I)V

    goto :goto_1

    .line 2258
    :pswitch_1
    const v8, 0x20403d8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcIconButton;->setText(I)V

    goto/16 :goto_1

    .line 2283
    .restart local v2       #emptyView:Landroid/widget/TextView;
    .restart local v4       #moreExListView:Lcom/htc/widget/HtcListView;
    .restart local v5       #moreExpandViewLayout:Landroid/view/ViewGroup;
    :cond_4
    #calls: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->reInit(Landroid/view/ViewGroup;I)V
    invoke-static {v6, v3, v1}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$1500(Lcom/htc/app/FilePickerCore$MoreExpanedObject;Landroid/view/ViewGroup;I)V

    goto :goto_2

    .line 2253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showLandingPage()V
    .locals 37

    .prologue
    .line 2522
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v21

    .line 2523
    .local v21, fm:Landroid/app/FragmentManager;
    const v6, 0x20200bf

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v16

    check-cast v16, Lcom/htc/app/FilePickerCarousel;

    .line 2525
    .local v16, carousel:Lcom/htc/app/FilePickerCarousel;
    if-eqz v16, :cond_0

    .line 2526
    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/htc/app/FilePickerCarousel;->enableAnimation(Z)V

    .line 2527
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->showLoadingPage()V

    .line 2528
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->unregisterSdcardReceiver()V

    .line 2529
    const v6, 0x20200c4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 2530
    const v6, 0x20200c2

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 2531
    const v6, 0x20200be

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 2532
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getLandingView()Landroid/view/View;

    move-result-object v20

    .line 2534
    .local v20, filePickerLandingView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-eqz v6, :cond_5

    .line 2535
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 2536
    .local v26, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2537
    .local v24, lstImageItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v6, "ItemImage"

    const v7, 0x2080219

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2538
    const-string v6, "ItemText"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->mRecentText:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2539
    const-string v6, "ItemTabType"

    const-string v7, "Tab_Recent"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2540
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2541
    new-instance v26, Ljava/util/HashMap;

    .end local v26           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 2542
    .restart local v26       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ItemImage"

    const v7, 0x2080217

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2543
    const-string v6, "ItemText"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->mTypeText:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    const-string v6, "ItemTabType"

    const-string v7, "Tab_Type"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2545
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2546
    new-instance v26, Ljava/util/HashMap;

    .end local v26           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 2547
    .restart local v26       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ItemImage"

    const v7, 0x2080216

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2548
    const-string v6, "ItemText"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->mFavoritesText:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2549
    const-string v6, "ItemTabType"

    const-string v7, "Tab_Favorites"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2550
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2552
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/app/FilePickerCore;->offlineStringArray:[Ljava/lang/String;

    .line 2553
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_1

    .line 2554
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->offlineStringArray:[Ljava/lang/String;

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "ItemText"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v22

    .line 2553
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 2557
    :cond_1
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v9, v6, [Ljava/lang/Integer;

    .line 2558
    .local v9, offlineIdArray:[Ljava/lang/Integer;
    const/16 v22, 0x0

    :goto_1
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_2

    .line 2559
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "ItemImage"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    aput-object v6, v9, v22

    .line 2558
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 2562
    :cond_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/app/FilePickerCore;->offlineTabStringArray:[Ljava/lang/String;

    .line 2563
    const/16 v22, 0x0

    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_3

    .line 2564
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->offlineTabStringArray:[Ljava/lang/String;

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "ItemTabType"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v22

    .line 2563
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 2566
    :cond_3
    new-instance v5, Lcom/htc/app/FilePickerCore$GridAdapter;

    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/app/FilePickerCore;->offlineStringArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/app/FilePickerCore;->offlineTabStringArray:[Ljava/lang/String;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/htc/app/FilePickerCore$GridAdapter;-><init>(Lcom/htc/app/FilePickerCore;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 2569
    .local v5, offlineGridAdapter:Lcom/htc/app/FilePickerCore$GridAdapter;
    const v6, 0x20200b9

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/htc/widget/HtcGridView;

    .line 2572
    .local v27, offlineGridView:Lcom/htc/widget/HtcGridView;
    new-instance v19, Landroid/util/DisplayMetrics;

    invoke-direct/range {v19 .. v19}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2573
    .local v19, displaymetrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2574
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v36, v0

    .line 2575
    .local v36, total_width:I
    invoke-virtual/range {v27 .. v27}, Lcom/htc/widget/HtcGridView;->getPaddingLeft()I

    move-result v31

    .line 2576
    .local v31, paddingLeft:I
    invoke-virtual/range {v27 .. v27}, Lcom/htc/widget/HtcGridView;->getPaddingRight()I

    move-result v32

    .line 2577
    .local v32, paddingRight:I
    invoke-virtual/range {v27 .. v27}, Lcom/htc/widget/HtcGridView;->getPaddingTop()I

    move-result v33

    .line 2578
    .local v33, paddingTop:I
    invoke-virtual/range {v27 .. v27}, Lcom/htc/widget/HtcGridView;->getPaddingBottom()I

    move-result v30

    .line 2579
    .local v30, paddingBottom:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/app/FilePickerCore;->gridItemSize:I

    mul-int/lit8 v6, v6, 0x3

    sub-int v23, v36, v6

    .line 2580
    .local v23, left_width:I
    if-lez v23, :cond_4

    .line 2581
    div-int/lit8 v31, v23, 0x8

    .line 2582
    div-int/lit8 v32, v23, 0x8

    .line 2584
    :cond_4
    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v32

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcGridView;->setPadding(IIII)V

    .line 2586
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2587
    new-instance v6, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/app/FilePickerCore$OfflineItemClickListener;-><init>(Lcom/htc/app/FilePickerCore;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcGridView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 2590
    .end local v5           #offlineGridAdapter:Lcom/htc/app/FilePickerCore$GridAdapter;
    .end local v9           #offlineIdArray:[Ljava/lang/Integer;
    .end local v19           #displaymetrics:Landroid/util/DisplayMetrics;
    .end local v22           #i:I
    .end local v23           #left_width:I
    .end local v24           #lstImageItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v26           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v27           #offlineGridView:Lcom/htc/widget/HtcGridView;
    .end local v30           #paddingBottom:I
    .end local v31           #paddingLeft:I
    .end local v32           #paddingRight:I
    .end local v33           #paddingTop:I
    .end local v36           #total_width:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServiceEnabledCheck->FilePicker CloudUI by Intent->Enabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-eqz v6, :cond_c

    .line 2593
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 2594
    .restart local v26       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2597
    .local v25, lstImageItem2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/app/FilePickerCloudHelper;->isCloudServiceEnabled(I)Z

    move-result v34

    .line 2599
    .local v34, serviceEnabled:Z
    const/4 v6, 0x1

    move/from16 v0, v34

    if-ne v0, v6, :cond_6

    .line 2600
    new-instance v26, Ljava/util/HashMap;

    .end local v26           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 2601
    .restart local v26       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ItemImage"

    const v7, 0x2080215

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2602
    const-string v6, "ItemText"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->mDropboxText:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2603
    const-string v6, "ItemTabType"

    const-string v7, "Tab_NoneCarousel"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2604
    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2606
    :cond_6
    const-string v6, "ServiceEnabledCheck"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServiceEnabledCheck->Dropbox:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/app/FilePickerCloudHelper;->isCloudServiceEnabled(I)Z

    move-result v34

    .line 2611
    const/4 v6, 0x1

    move/from16 v0, v34

    if-ne v0, v6, :cond_7

    .line 2612
    new-instance v26, Ljava/util/HashMap;

    .end local v26           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 2613
    .restart local v26       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "ItemImage"

    const v7, 0x208021b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2614
    const-string v6, "ItemText"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->mSkyDriveText:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2615
    const-string v6, "ItemTabType"

    const-string v7, "Tab_NoneCarousel"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2616
    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2618
    :cond_7
    const-string v6, "ServiceEnabledCheck"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServiceEnabledCheck->skydrive:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 2621
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/app/FilePickerCore;->onlineStringArray:[Ljava/lang/String;

    .line 2622
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_3
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_8

    .line 2623
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->onlineStringArray:[Ljava/lang/String;

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "ItemText"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v22

    .line 2622
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 2626
    :cond_8
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v14, v6, [Ljava/lang/Integer;

    .line 2627
    .local v14, onlineIdArray:[Ljava/lang/Integer;
    const/16 v22, 0x0

    :goto_4
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_9

    .line 2628
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "ItemImage"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    aput-object v6, v14, v22

    .line 2627
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 2631
    :cond_9
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/app/FilePickerCore;->onlineTabStringArray:[Ljava/lang/String;

    .line 2632
    const/16 v22, 0x0

    :goto_5
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_a

    .line 2633
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/FilePickerCore;->onlineTabStringArray:[Ljava/lang/String;

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v8, "ItemTabType"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v22

    .line 2632
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 2635
    :cond_a
    new-instance v10, Lcom/htc/app/FilePickerCore$GridAdapter;

    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/app/FilePickerCore;->onlineStringArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/app/FilePickerCore;->onlineTabStringArray:[Ljava/lang/String;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/htc/app/FilePickerCore$GridAdapter;-><init>(Lcom/htc/app/FilePickerCore;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 2638
    .local v10, onlineGridAdapter:Lcom/htc/app/FilePickerCore$GridAdapter;
    const v6, 0x20200bc

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/htc/widget/HtcGridView;

    .line 2640
    .local v28, onlineGridView:Lcom/htc/widget/HtcGridView;
    new-instance v19, Landroid/util/DisplayMetrics;

    invoke-direct/range {v19 .. v19}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2641
    .restart local v19       #displaymetrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2642
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v36, v0

    .line 2643
    .restart local v36       #total_width:I
    invoke-virtual/range {v28 .. v28}, Lcom/htc/widget/HtcGridView;->getPaddingLeft()I

    move-result v31

    .line 2644
    .restart local v31       #paddingLeft:I
    invoke-virtual/range {v28 .. v28}, Lcom/htc/widget/HtcGridView;->getPaddingRight()I

    move-result v32

    .line 2645
    .restart local v32       #paddingRight:I
    invoke-virtual/range {v28 .. v28}, Lcom/htc/widget/HtcGridView;->getPaddingTop()I

    move-result v33

    .line 2646
    .restart local v33       #paddingTop:I
    invoke-virtual/range {v28 .. v28}, Lcom/htc/widget/HtcGridView;->getPaddingBottom()I

    move-result v30

    .line 2647
    .restart local v30       #paddingBottom:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/app/FilePickerCore;->gridItemSize:I

    mul-int/lit8 v6, v6, 0x3

    sub-int v23, v36, v6

    .line 2648
    .restart local v23       #left_width:I
    if-lez v23, :cond_b

    .line 2649
    div-int/lit8 v31, v23, 0x8

    .line 2650
    div-int/lit8 v32, v23, 0x8

    .line 2652
    :cond_b
    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v32

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcGridView;->setPadding(IIII)V

    .line 2654
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2655
    new-instance v6, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/app/FilePickerCore$OnlineItemClickListener;-><init>(Lcom/htc/app/FilePickerCore;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcGridView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 2657
    const v6, 0x20200bb

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/htc/widget/HtcListItemSeparator;

    .line 2659
    .local v17, cloudServicesSepararor:Lcom/htc/widget/HtcListItemSeparator;
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemSeparator;->setVisibility(I)V

    .line 2660
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20403e9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2662
    .local v18, cloudServicesStr:Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 2663
    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 2664
    const v6, 0x20200ba

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 2665
    .local v29, onlineLayout:Landroid/view/View;
    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2668
    .end local v10           #onlineGridAdapter:Lcom/htc/app/FilePickerCore$GridAdapter;
    .end local v14           #onlineIdArray:[Ljava/lang/Integer;
    .end local v17           #cloudServicesSepararor:Lcom/htc/widget/HtcListItemSeparator;
    .end local v18           #cloudServicesStr:Ljava/lang/String;
    .end local v19           #displaymetrics:Landroid/util/DisplayMetrics;
    .end local v22           #i:I
    .end local v23           #left_width:I
    .end local v25           #lstImageItem2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v26           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v28           #onlineGridView:Lcom/htc/widget/HtcGridView;
    .end local v29           #onlineLayout:Landroid/view/View;
    .end local v30           #paddingBottom:I
    .end local v31           #paddingLeft:I
    .end local v32           #paddingRight:I
    .end local v33           #paddingTop:I
    .end local v34           #serviceEnabled:Z
    .end local v36           #total_width:I
    :cond_c
    const v6, 0x20200c4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/htc/app/FilePickerCore;->setViewToMainLayoutAndShow(ILandroid/view/View;)V

    .line 2675
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/app/FilePickerActionBarExtController;->setActionBarContainerBackUpEnabled(Z)V

    .line 2676
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 2677
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20403e0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 2679
    .local v35, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lcom/htc/app/FilePickerActionBarExtController;->setMainTitle(Ljava/lang/String;)V

    .line 2680
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 2681
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 2683
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 2684
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2686
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 2687
    return-void
.end method

.method private showLoadingPage()V
    .locals 3

    .prologue
    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private showLocalFilePickerView()V
    .locals 15

    .prologue
    const v14, 0x20200bf

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1417
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-direct {p0, v12}, Lcom/htc/app/FilePickerCore;->getAppDropDownAdapter(Z)Lcom/htc/app/FilePickerAppDropDownAdapter;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 1418
    invoke-direct {p0, v12}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 1419
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->checkActionBarContainerBackUpEnabled()V

    .line 1420
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v10}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/htc/app/FilePickerCore;->setMainTitle(I)V

    .line 1422
    invoke-direct {p0, v14, v13}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 1424
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 1425
    .local v5, fm:Landroid/app/FragmentManager;
    invoke-virtual {v5, v14}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/htc/app/FilePickerCarousel;

    .line 1427
    .local v3, carousel:Lcom/htc/app/FilePickerCarousel;
    if-eqz v3, :cond_6

    .line 1428
    new-instance v10, Lcom/htc/app/FilePickerCore$7;

    invoke-direct {v10, p0}, Lcom/htc/app/FilePickerCore$7;-><init>(Lcom/htc/app/FilePickerCore;)V

    invoke-virtual {v3, v10}, Lcom/htc/app/FilePickerCarousel;->setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V

    .line 1433
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x20200cc

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/app/FilePickerListView;

    .line 1436
    .local v9, typeListView:Lcom/htc/app/FilePickerListView;
    if-eqz v9, :cond_0

    .line 1437
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v10, :cond_0

    .line 1438
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v9, v10}, Lcom/htc/app/FilePickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1442
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x20200ca

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/app/FilePickerListView;

    .line 1444
    .local v8, recentListView:Lcom/htc/app/FilePickerListView;
    if-eqz v8, :cond_2

    .line 1445
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v10, :cond_1

    .line 1446
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v8, v10}, Lcom/htc/app/FilePickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1447
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialEmptyViewOfRecentView()V

    .line 1450
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getRecentFragment()Lcom/htc/app/FilePickerRecentFragment;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1451
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getRecentFragment()Lcom/htc/app/FilePickerRecentFragment;

    move-result-object v10

    const/16 v11, 0x3ec

    invoke-virtual {v10, v11}, Lcom/htc/app/FilePickerRecentFragment;->NotifyToDoTask(I)V

    .line 1452
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getRecentFragment()Lcom/htc/app/FilePickerRecentFragment;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Lcom/htc/app/FilePickerRecentFragment;->NotifyToDoTask(I)V

    .line 1456
    :cond_2
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x20200a9

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/app/FilePickerListView;

    .line 1458
    .local v4, favoritesListView:Lcom/htc/app/FilePickerListView;
    if-eqz v4, :cond_3

    .line 1459
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v10, :cond_3

    .line 1460
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4, v10}, Lcom/htc/app/FilePickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1461
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialEmptyViewOfFavoritesView()V

    .line 1465
    :cond_3
    const/4 v10, 0x3

    new-array v1, v10, [Lcom/htc/app/FilePickerListAdapter;

    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    aput-object v10, v1, v13

    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    aput-object v10, v1, v12

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    aput-object v11, v1, v10

    .line 1466
    .local v1, adapters:[Lcom/htc/app/FilePickerListAdapter;
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/app/FilePickerListAdapter;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v0, v2, v6

    .line 1467
    .local v0, adapter:Lcom/htc/app/FilePickerListAdapter;
    if-eqz v0, :cond_4

    .line 1468
    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetChanged()V

    .line 1466
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1471
    .end local v0           #adapter:Lcom/htc/app/FilePickerListAdapter;
    :cond_5
    invoke-virtual {v3, v12}, Lcom/htc/app/FilePickerCarousel;->enableAnimation(Z)V

    .line 1474
    .end local v1           #adapters:[Lcom/htc/app/FilePickerListAdapter;
    .end local v2           #arr$:[Lcom/htc/app/FilePickerListAdapter;
    .end local v4           #favoritesListView:Lcom/htc/app/FilePickerListView;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #recentListView:Lcom/htc/app/FilePickerListView;
    .end local v9           #typeListView:Lcom/htc/app/FilePickerListView;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1475
    iget-object v10, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/htc/app/FilePickerCore;->showViewByTab(Ljava/lang/String;)V

    .line 1476
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 1477
    return-void
.end method

.method private showNoSdCard(I)V
    .locals 4
    .parameter "messageResId"

    .prologue
    const v3, 0x20200c1

    const/16 v2, 0x8

    .line 4078
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 4079
    const v1, 0x20200bf

    invoke-direct {p0, v1, v2}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 4080
    const v1, 0x20200c0

    invoke-direct {p0, v1, v2}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 4081
    const v1, 0x20200cc

    invoke-direct {p0, v1, v2}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 4082
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/htc/app/FilePickerCore;->setViewVisibilityAndTag(II)V

    .line 4083
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->setNoFileViewEmptyTextOfTypeView()V

    .line 4084
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4086
    .local v0, mSdcardWarningMessage:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 4087
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 4092
    :goto_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 4093
    return-void

    .line 4089
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    const-string v2, "showNoSdCard: NoSdCardView is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showProcessingPage()V
    .locals 3

    .prologue
    .line 299
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private showSearchBar()V
    .locals 1

    .prologue
    .line 3930
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    if-eqz v0, :cond_0

    .line 3931
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    if-eqz v0, :cond_0

    .line 3932
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3933
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActionBarExtController;->showSearchBarMode()V

    .line 3936
    :cond_0
    return-void
.end method

.method private showUsbConnectionPickerView()V
    .locals 13

    .prologue
    const v12, 0x20200aa

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1522
    iget v7, p0, Lcom/htc/app/FilePickerCore;->mUsbConnetionViewMode:I

    invoke-virtual {p0, v7}, Lcom/htc/app/FilePickerCore;->initialUsbConnection(I)V

    .line 1524
    const/4 v6, 0x0

    .line 1525
    .local v6, title:Ljava/lang/String;
    iget v7, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    if-nez v7, :cond_2

    .line 1526
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v7}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1527
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20403d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1535
    :goto_0
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v9}, Lcom/htc/app/FilePickerActionBarExtController;->setActionBarContainerBackUpEnabled(Z)V

    .line 1536
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v10}, Lcom/htc/app/FilePickerActionBarExtController;->setDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 1537
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v6}, Lcom/htc/app/FilePickerActionBarExtController;->setMainTitle(Ljava/lang/String;)V

    .line 1538
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v7, v10}, Lcom/htc/app/FilePickerActionBarExtController;->setSubTitle(Ljava/lang/String;)V

    .line 1539
    invoke-direct {p0, v9}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 1541
    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v7}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v0

    .line 1542
    .local v0, dataSourceType:I
    invoke-direct {p0, v0, v10}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v5

    .line 1544
    .local v5, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    const/4 v2, 0x0

    .line 1547
    .local v2, filePickerFolderView:Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getFolderViewInstance()Landroid/view/ViewGroup;

    move-result-object v2

    .line 1548
    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1549
    .local v1, emptyView:Landroid/widget/TextView;
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1551
    const v7, 0x20200ae

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    .line 1553
    .local v3, moreExListView:Lcom/htc/widget/HtcListView;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1554
    const v7, 0x20200ac

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1556
    .local v4, moreExpandViewLayout:Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 1557
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1558
    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #emptyView:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 1559
    .restart local v1       #emptyView:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 1560
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1563
    :cond_0
    if-nez v5, :cond_3

    .line 1564
    invoke-virtual {p0, v2, v0}, Lcom/htc/app/FilePickerCore;->getMoreExpanedObjectInstance(Landroid/view/ViewGroup;I)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v5

    .line 1565
    invoke-direct {p0, v5}, Lcom/htc/app/FilePickerCore;->addMoreExpanedObjectToList(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    .line 1571
    :goto_1
    const v7, 0x20200c0

    invoke-direct {p0, v7, v2}, Lcom/htc/app/FilePickerCore;->setViewToMainLayoutAndShow(ILandroid/view/View;)V

    .line 1572
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->setNeedReLoad(Z)V

    .line 1573
    invoke-virtual {v5}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->updatePathOfFolderViewHeader()V

    .line 1574
    #calls: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->loadFolders()V
    invoke-static {v5}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$1600(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V

    .line 1576
    const-string v7, "Tab_NoneCarousel"

    invoke-direct {p0, v7}, Lcom/htc/app/FilePickerCore;->showViewByTab(Ljava/lang/String;)V

    .line 1577
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 1578
    return-void

    .line 1529
    .end local v0           #dataSourceType:I
    .end local v1           #emptyView:Landroid/widget/TextView;
    .end local v2           #filePickerFolderView:Landroid/view/ViewGroup;
    .end local v3           #moreExListView:Lcom/htc/widget/HtcListView;
    .end local v4           #moreExpandViewLayout:Landroid/view/ViewGroup;
    .end local v5           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_1
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2040146

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1532
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2040147

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1567
    .restart local v0       #dataSourceType:I
    .restart local v1       #emptyView:Landroid/widget/TextView;
    .restart local v2       #filePickerFolderView:Landroid/view/ViewGroup;
    .restart local v3       #moreExListView:Lcom/htc/widget/HtcListView;
    .restart local v4       #moreExpandViewLayout:Landroid/view/ViewGroup;
    .restart local v5       #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_3
    #calls: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->reInit(Landroid/view/ViewGroup;I)V
    invoke-static {v5, v2, v0}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$1500(Lcom/htc/app/FilePickerCore$MoreExpanedObject;Landroid/view/ViewGroup;I)V

    goto :goto_1
.end method

.method private showViewByTab(Ljava/lang/String;)V
    .locals 10
    .parameter "tabId"

    .prologue
    const/4 v9, 0x0

    .line 2370
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 2371
    .local v3, oldTab:Ljava/lang/String;
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 2372
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->hideSearchBar()V

    .line 2373
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->performAllViewActionModeFinish()V

    .line 2375
    const-string v5, "Tab_Recent"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2376
    iput-boolean v9, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    .line 2424
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2425
    return-void

    .line 2377
    :cond_1
    const-string v5, "Tab_Favorites"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2378
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-eq v3, v5, :cond_4

    .line 2380
    :try_start_0
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerDBHelper;->isFavChanged()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2381
    const-string v5, "FilePickerWithDB"

    const-string v6, "#### refresh fav data"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    new-instance v2, Lcom/htc/app/FileScanner;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    iget-object v7, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/htc/app/FileScanner;-><init>(Landroid/content/Context;Lcom/htc/app/FilePickerListAdapter;[Ljava/lang/String;Lcom/htc/app/FilePickerDBHelper;)V

    .line 2385
    .local v2, fileScanner:Lcom/htc/app/FileScanner;
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v2, v5}, Lcom/htc/app/FileScanner;->setFilePickerUtil(Lcom/htc/app/FilePickerUtil;)V

    .line 2386
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerListAdapter;->clean()V

    .line 2387
    new-instance v1, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/app/FilePickerCore$9;

    invoke-direct {v5, p0, v2}, Lcom/htc/app/FilePickerCore$9;-><init>(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FileScanner;)V

    invoke-direct {v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2401
    .local v1, favoriteThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2413
    .end local v1           #favoriteThread:Ljava/lang/Thread;
    .end local v2           #fileScanner:Lcom/htc/app/FileScanner;
    :cond_2
    :goto_1
    iput-boolean v9, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    goto :goto_0

    .line 2403
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v5, :cond_2

    .line 2404
    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v5}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2406
    :catch_0
    move-exception v0

    .line 2407
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "FilePickerWithDB"

    const-string v6, "#### mDbHelper.isFavChanged() fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2411
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v5, "FilePickerWithDB"

    const-string v6, "#### don\'t refresh fav data"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2414
    :cond_5
    const-string v5, "Tab_Type"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2415
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x20200cb

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2416
    .local v4, typeLayout:Landroid/view/View;
    if-eqz v4, :cond_6

    .line 2417
    invoke-virtual {p0, v4}, Lcom/htc/app/FilePickerCore;->checkToShowLocalStorageAvailableView(Landroid/view/View;)V

    .line 2419
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    goto/16 :goto_0

    .line 2420
    .end local v4           #typeLayout:Landroid/view/View;
    :cond_7
    const-string v5, "Tab_NoneCarousel"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2421
    iput-boolean v9, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    goto/16 :goto_0
.end method

.method private sort(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 3914
    if-eqz p1, :cond_0

    .line 3915
    invoke-virtual {p1}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3916
    new-instance v0, Lcom/htc/app/FileSorter;

    invoke-direct {v0}, Lcom/htc/app/FileSorter;-><init>()V

    .line 3917
    .local v0, fileSorter:Lcom/htc/app/FileSorter;
    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 3918
    iget v1, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 3919
    invoke-virtual {p1, v0}, Lcom/htc/app/FilePickerListAdapter;->setFileSorter(Lcom/htc/app/FileSorter;)V

    .line 3920
    invoke-virtual {p1}, Lcom/htc/app/FilePickerListAdapter;->sortRecentAndFavorite()V

    .line 3923
    .end local v0           #fileSorter:Lcom/htc/app/FileSorter;
    :cond_0
    return-void
.end method

.method private switchLayoutByPicker()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1243
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1244
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1245
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->notifyCloudLoginCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1247
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-nez v1, :cond_2

    .line 1289
    :cond_1
    :goto_0
    return-void

    .line 1250
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    invoke-static {v1}, Lcom/htc/app/FilePickerUtil;->isLocalDataSourceType(I)Z

    move-result v0

    .line 1253
    .local v0, currentDataSourceIsLocal:Z
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    if-eqz v1, :cond_3

    .line 1255
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchUsbConnectionPicker()V

    .line 1256
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1257
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    const-string v2, "switchLayoutByPicker()->[USB Connection Picker] (SourcePicker/DestinationPicker)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1261
    :cond_3
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-eqz v1, :cond_4

    .line 1263
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFolderPicker()V

    .line 1264
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1265
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    const-string v2, "switchLayoutByPicker()->[CloudFolderPicker](ShareVia)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1269
    :cond_4
    if-nez v0, :cond_5

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_5
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-ne v1, v3, :cond_7

    .line 1272
    :cond_6
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFilePicker()V

    .line 1273
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1274
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    const-string v2, "switchLayoutByPicker()->[CloudFilePicker] (Dropbox/SkyDrive)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1278
    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-nez v1, :cond_9

    :cond_8
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    if-ne v1, v3, :cond_a

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    if-nez v1, :cond_a

    .line 1280
    :cond_9
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchLocalPicker()V

    .line 1281
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1282
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    const-string v2, "switchLayoutByPicker()->[LocalFilePicker] (Recent/Type/Favorites)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1285
    :cond_a
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 1286
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLandingPage()V

    .line 1287
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1288
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    const-string v2, "switchLayoutByPicker()->[LandingPage]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1291
    :cond_b
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 1292
    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 1293
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    const-string v2, "switchLayoutByPicker()->No found the kind settings of Picker!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No found the kind settings of Picker!!!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private unregisterSdcardReceiver()V
    .locals 2

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    if-eqz v0, :cond_0

    .line 2801
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    .line 2804
    :cond_0
    return-void
.end method

.method private updateCountOfFavoriteListViewHeader()V
    .locals 4

    .prologue
    .line 3775
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfFavoriteListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v2, :cond_1

    .line 3776
    const/4 v0, 0x0

    .line 3777
    .local v0, fileCount:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v2, :cond_0

    .line 3778
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getCurrentFileCount()I

    move-result v0

    .line 3780
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->getFileCountString(I)Ljava/lang/String;

    move-result-object v1

    .line 3781
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfFavoriteListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 3784
    .end local v0           #fileCount:I
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateCountOfRecentListViewHeader()V
    .locals 4

    .prologue
    .line 3753
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v2, :cond_1

    .line 3754
    const/4 v0, 0x0

    .line 3755
    .local v0, fileCount:I
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v2, :cond_0

    .line 3756
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getCurrentFileCount()I

    move-result v0

    .line 3758
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->getFileCountString(I)Ljava/lang/String;

    move-result-object v1

    .line 3759
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 3762
    .end local v0           #fileCount:I
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public final checkLandingPage()V
    .locals 12

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x20200b9

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcGridView;

    .line 1024
    .local v2, offlineGridView:Lcom/htc/widget/HtcGridView;
    if-eqz v2, :cond_1

    .line 1025
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1026
    .local v0, displaymetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1027
    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1028
    .local v9, total_width:I
    invoke-virtual {v2}, Lcom/htc/widget/HtcGridView;->getPaddingLeft()I

    move-result v6

    .line 1029
    .local v6, paddingLeft:I
    invoke-virtual {v2}, Lcom/htc/widget/HtcGridView;->getPaddingRight()I

    move-result v7

    .line 1030
    .local v7, paddingRight:I
    invoke-virtual {v2}, Lcom/htc/widget/HtcGridView;->getPaddingTop()I

    move-result v8

    .line 1031
    .local v8, paddingTop:I
    invoke-virtual {v2}, Lcom/htc/widget/HtcGridView;->getPaddingBottom()I

    move-result v5

    .line 1032
    .local v5, paddingBottom:I
    iget v10, p0, Lcom/htc/app/FilePickerCore;->gridItemSize:I

    mul-int/lit8 v10, v10, 0x3

    sub-int v1, v9, v10

    .line 1033
    .local v1, left_width:I
    if-lez v1, :cond_0

    .line 1034
    div-int/lit8 v6, v1, 0x8

    .line 1035
    div-int/lit8 v7, v1, 0x8

    .line 1038
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 1039
    .local v4, orientation:I
    packed-switch v4, :pswitch_data_0

    .line 1058
    :goto_0
    invoke-virtual {v2, v6, v8, v7, v5}, Lcom/htc/widget/HtcGridView;->setPadding(IIII)V

    .line 1060
    .end local v0           #displaymetrics:Landroid/util/DisplayMetrics;
    .end local v1           #left_width:I
    .end local v4           #orientation:I
    .end local v5           #paddingBottom:I
    .end local v6           #paddingLeft:I
    .end local v7           #paddingRight:I
    .end local v8           #paddingTop:I
    .end local v9           #total_width:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x20200bc

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcGridView;

    .line 1061
    .local v3, onlineGridView:Lcom/htc/widget/HtcGridView;
    if-eqz v3, :cond_3

    .line 1062
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1063
    .restart local v0       #displaymetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1064
    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1065
    .restart local v9       #total_width:I
    invoke-virtual {v3}, Lcom/htc/widget/HtcGridView;->getPaddingLeft()I

    move-result v6

    .line 1066
    .restart local v6       #paddingLeft:I
    invoke-virtual {v3}, Lcom/htc/widget/HtcGridView;->getPaddingRight()I

    move-result v7

    .line 1067
    .restart local v7       #paddingRight:I
    invoke-virtual {v3}, Lcom/htc/widget/HtcGridView;->getPaddingTop()I

    move-result v8

    .line 1068
    .restart local v8       #paddingTop:I
    invoke-virtual {v3}, Lcom/htc/widget/HtcGridView;->getPaddingBottom()I

    move-result v5

    .line 1069
    .restart local v5       #paddingBottom:I
    iget v10, p0, Lcom/htc/app/FilePickerCore;->gridItemSize:I

    mul-int/lit8 v10, v10, 0x3

    sub-int v1, v9, v10

    .line 1070
    .restart local v1       #left_width:I
    if-lez v1, :cond_2

    .line 1071
    div-int/lit8 v6, v1, 0x8

    .line 1072
    div-int/lit8 v7, v1, 0x8

    .line 1075
    :cond_2
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 1076
    .restart local v4       #orientation:I
    packed-switch v4, :pswitch_data_1

    .line 1095
    :goto_1
    invoke-virtual {v3, v6, v8, v7, v5}, Lcom/htc/widget/HtcGridView;->setPadding(IIII)V

    .line 1097
    .end local v0           #displaymetrics:Landroid/util/DisplayMetrics;
    .end local v1           #left_width:I
    .end local v4           #orientation:I
    .end local v5           #paddingBottom:I
    .end local v6           #paddingLeft:I
    .end local v7           #paddingRight:I
    .end local v8           #paddingTop:I
    .end local v9           #total_width:I
    :cond_3
    return-void

    .line 1041
    .end local v3           #onlineGridView:Lcom/htc/widget/HtcGridView;
    .restart local v0       #displaymetrics:Landroid/util/DisplayMetrics;
    .restart local v1       #left_width:I
    .restart local v4       #orientation:I
    .restart local v5       #paddingBottom:I
    .restart local v6       #paddingLeft:I
    .restart local v7       #paddingRight:I
    .restart local v8       #paddingTop:I
    .restart local v9       #total_width:I
    :pswitch_0
    iget v8, p0, Lcom/htc/app/FilePickerCore;->Default_Portrait_Padding_Top:I

    .line 1042
    iget v5, p0, Lcom/htc/app/FilePickerCore;->Default_Portrait_Padding_Bottom:I

    .line 1043
    goto :goto_0

    .line 1045
    :pswitch_1
    iget v8, p0, Lcom/htc/app/FilePickerCore;->Default_Landscape_Padding_Top:I

    .line 1046
    iget v5, p0, Lcom/htc/app/FilePickerCore;->Default_Landscape_Padding_Bottom:I

    .line 1047
    goto :goto_0

    .line 1049
    :pswitch_2
    iget v8, p0, Lcom/htc/app/FilePickerCore;->Default_Portrait_Padding_Top:I

    .line 1050
    iget v5, p0, Lcom/htc/app/FilePickerCore;->Default_Portrait_Padding_Bottom:I

    .line 1051
    goto :goto_0

    .line 1053
    :pswitch_3
    iget v8, p0, Lcom/htc/app/FilePickerCore;->Default_Landscape_Padding_Top:I

    .line 1054
    iget v5, p0, Lcom/htc/app/FilePickerCore;->Default_Landscape_Padding_Bottom:I

    goto :goto_0

    .line 1078
    .restart local v3       #onlineGridView:Lcom/htc/widget/HtcGridView;
    :pswitch_4
    iget v8, p0, Lcom/htc/app/FilePickerCore;->Default_Portrait_Padding_Top:I

    .line 1079
    iget v5, p0, Lcom/htc/app/FilePickerCore;->Default_Portrait_Padding_Bottom:I

    .line 1080
    goto :goto_1

    .line 1082
    :pswitch_5
    iget v8, p0, Lcom/htc/app/FilePickerCore;->Default_Landscape_Padding_Top:I

    .line 1083
    iget v5, p0, Lcom/htc/app/FilePickerCore;->Default_Landscape_Padding_Bottom:I

    .line 1084
    goto :goto_1

    .line 1086
    :pswitch_6
    iget v8, p0, Lcom/htc/app/FilePickerCore;->Default_Portrait_Padding_Top:I

    .line 1087
    iget v5, p0, Lcom/htc/app/FilePickerCore;->Default_Portrait_Padding_Bottom:I

    .line 1088
    goto :goto_1

    .line 1090
    :pswitch_7
    iget v8, p0, Lcom/htc/app/FilePickerCore;->Default_Landscape_Padding_Top:I

    .line 1091
    iget v5, p0, Lcom/htc/app/FilePickerCore;->Default_Landscape_Padding_Bottom:I

    goto :goto_1

    .line 1039
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1076
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method checkToShowLocalStorageAvailableView(Landroid/view/View;)V
    .locals 10
    .parameter "typeLayout"

    .prologue
    const v9, 0x20401f9

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 2428
    const v6, 0x20200cd

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2429
    .local v5, noStorageView:Landroid/widget/TextView;
    const v6, 0x20200aa

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2430
    .local v4, emptyView:Landroid/widget/TextView;
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v2

    .line 2431
    .local v2, bInternalStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v0

    .line 2433
    .local v0, bExternalStorageAvailable:Z
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v3

    .line 2434
    .local v3, dataSourceType:I
    packed-switch v3, :pswitch_data_0

    .line 2458
    :goto_0
    return-void

    .line 2436
    :pswitch_0
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageShared()Z

    move-result v1

    .line 2437
    .local v1, bExternalStorageShared:Z
    if-eqz v1, :cond_0

    .line 2438
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 2441
    :goto_1
    if-eqz v0, :cond_1

    .line 2442
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2440
    :cond_0
    const v6, 0x20400a0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2444
    :cond_1
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2445
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2449
    .end local v1           #bExternalStorageShared:Z
    :pswitch_1
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 2450
    if-eqz v2, :cond_2

    .line 2451
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2453
    :cond_2
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2454
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2434
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 3996
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerActionBarExtController;->isSearchBarVisibled()Z

    move-result v2

    .line 3997
    .local v2, isSearchBarVisibled:Z
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerActionBarExtController;->isActionBarContainerBackUpEnabled()Z

    move-result v1

    .line 4000
    .local v1, isActionBarContainerBackUpEnabled:Z
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v4, 0x4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 4003
    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    iget v6, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    .line 4004
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4005
    .local v0, bundle:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->onResult(Landroid/os/Bundle;)V

    .line 4006
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->finish()V

    .line 4009
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method dispatchSearchKey(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 4045
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->setSearchString(Ljava/lang/String;)V

    .line 4046
    return-void
.end method

.method public doStart()V
    .locals 3

    .prologue
    .line 3096
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3098
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/htc/app/FilePickerCore;->mOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3101
    :goto_0
    return-void

    .line 3100
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public doStop()V
    .locals 0

    .prologue
    .line 3104
    return-void
.end method

.method getActionBarExtCtrl()Lcom/htc/app/FilePickerActionBarExtController;
    .locals 1

    .prologue
    .line 4725
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    return-object v0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerAct:Landroid/app/Activity;

    return-object v0
.end method

.method getFavoritesAdapter()Lcom/htc/app/FilePickerListAdapter;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method public getFavoritesFragment()Lcom/htc/app/FilePickerFavoritesFragment;
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerFavoritesFragment:Lcom/htc/app/FilePickerFavoritesFragment;

    return-object v0
.end method

.method getFilePickerUtil()Lcom/htc/app/FilePickerUtil;
    .locals 1

    .prologue
    .line 4721
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method getFolderAdapterInstance(Landroid/view/ViewGroup;Ljava/util/LinkedList;)Lcom/htc/app/FilePickerFolderAdapter;
    .locals 4
    .parameter "filePickerFolderView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;)",
            "Lcom/htc/app/FilePickerFolderAdapter;"
        }
    .end annotation

    .prologue
    .line 1587
    .local p2, resultItemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    new-instance v0, Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/htc/app/FilePickerFolderAdapter;-><init>(Landroid/content/Context;ILcom/htc/app/FilePickerUtil;Ljava/util/LinkedList;)V

    .line 1589
    .local v0, moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 4127
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 4128
    new-instance v0, Lcom/htc/app/FilePickerCore$23;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerCore$23;-><init>(Lcom/htc/app/FilePickerCore;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    .line 4135
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getMoreExpanedObjectInstance(Landroid/view/ViewGroup;I)Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    .locals 2
    .parameter "moreExpandableLayout"
    .parameter "dataSourceType"

    .prologue
    .line 1582
    new-instance v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;-><init>(Lcom/htc/app/FilePickerCore;Landroid/view/ViewGroup;ILcom/htc/app/FilePickerCore$1;)V

    return-object v0
.end method

.method getRecentAdapter()Lcom/htc/app/FilePickerListAdapter;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method public getRecentFragment()Lcom/htc/app/FilePickerRecentFragment;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerRecentFragment:Lcom/htc/app/FilePickerRecentFragment;

    return-object v0
.end method

.method getTypeAdapter()Lcom/htc/app/FilePickerListAdapter;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method public final initStringDescription()V
    .locals 2

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2040138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerCore;->RECENT_USED:Ljava/lang/String;

    .line 1011
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2040237

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerCore;->EMPTY_FOLDER:Ljava/lang/String;

    .line 1012
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2040238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerCore;->LOADING:Ljava/lang/String;

    .line 1013
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20403e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeText:Ljava/lang/String;

    .line 1014
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20403e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentText:Ljava/lang/String;

    .line 1015
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20403e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesText:Ljava/lang/String;

    .line 1016
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20403c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mDropboxText:Ljava/lang/String;

    .line 1017
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20403ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mSkyDriveText:Ljava/lang/String;

    .line 1019
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->checkHTCLandscapeEnabled(Z)V

    .line 1020
    return-void
.end method

.method public final initialFilePicker(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 615
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 616
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerCore;->initialFilePicker(Landroid/os/Bundle;)V

    .line 617
    return-void
.end method

.method public final initialFilePicker(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->initialIntentValue(Landroid/os/Bundle;)V

    .line 419
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActionBarExtController;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    .line 421
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mHintText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 429
    :cond_0
    :goto_0
    new-instance v0, Lcom/htc/app/FilePickerUtil;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/FilePickerUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 430
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setActHandler(Landroid/os/Handler;)V

    .line 431
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setFilter([Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsFolderPickerModeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setFolderPickerModeEnabled(Z)V

    .line 433
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsFilePickerModeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setFilePickerModeEnabled(Z)V

    .line 434
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    iget-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsOnlyShowCanWriteFolder:Z

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setOnlyShowCanWriteFolder(Z)V

    .line 437
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 438
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 446
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mEditor:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x204015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method initialUsbConnection(I)V
    .locals 3
    .parameter "usbConnectionMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1136
    packed-switch p1, :pswitch_data_0

    .line 1148
    :goto_0
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    if-eqz v0, :cond_0

    .line 1149
    const-string v0, "Tab_NoneCarousel"

    iput-object v0, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    .line 1150
    iput-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsActionModeChoiceEnabled:Z

    .line 1151
    iput-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsLocalDataSourceItemsEnabled:Z

    .line 1152
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsCloudDataSourceItemsEnabled:Z

    .line 1153
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    .line 1154
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->mIsSortMenuItemVisabled:Z

    .line 1155
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z

    .line 1156
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setFolderPickerModeEnabled(Z)V

    .line 1157
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-static {}, Lcom/htc/app/FilePickerUtil;->getLocalDefaultDateSourceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 1160
    :cond_0
    return-void

    .line 1138
    :pswitch_0
    iput-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    .line 1139
    iput v1, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    .line 1140
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerUtil;->setFilePickerModeEnabled(Z)V

    goto :goto_0

    .line 1143
    :pswitch_1
    iput-boolean v1, p0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    .line 1144
    iput v2, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    .line 1145
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v0, v2}, Lcom/htc/app/FilePickerUtil;->setFilePickerModeEnabled(Z)V

    goto :goto_0

    .line 1136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isFavoriteStopScan()Z
    .locals 1

    .prologue
    .line 3526
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsFavoriteStopScan:Z

    return v0
.end method

.method isRecentStopScan()Z
    .locals 1

    .prologue
    .line 3522
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsRecentStopScan:Z

    return v0
.end method

.method isTypeStopScan()Z
    .locals 1

    .prologue
    .line 3514
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x205000d

    const/high16 v7, 0x205

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getMainView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 225
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->initialActionBarExtCtrl()V

    .line 227
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "FilePickerPreference"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 229
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 232
    .local v1, resource:Landroid/content/res/Resources;
    new-array v0, v6, [Landroid/graphics/drawable/Drawable;

    .line 233
    .local v0, layers:[Landroid/graphics/drawable/Drawable;
    const v3, 0x20801b7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v5

    .line 234
    const/4 v3, 0x1

    const v4, 0x20801b8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v3

    .line 235
    aget-object v3, v0, v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/app/FilePickerCore;->gridItemSize:I

    .line 236
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->gridItemBkg:Landroid/graphics/drawable/LayerDrawable;

    .line 237
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/app/FilePickerCore;->Default_Landscape_Padding_Top:I

    .line 238
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/app/FilePickerCore;->Default_Landscape_Padding_Bottom:I

    .line 239
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/app/FilePickerCore;->Default_Portrait_Padding_Top:I

    .line 240
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/app/FilePickerCore;->Default_Portrait_Padding_Bottom:I

    .line 241
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    .line 243
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCore;->initialCarouselFragment(Landroid/os/Bundle;)V

    .line 245
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    const v0, 0x20403dd

    const v2, 0x104000a

    .line 4013
    packed-switch p1, :pswitch_data_0

    .line 4035
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4015
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->createNetworkSettingDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 4017
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->createSortDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 4019
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->createFolderPathReturnDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 4021
    :pswitch_4
    const v0, 0x20400a2

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->createProgressDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 4023
    :pswitch_5
    const v0, 0x20402cd

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerCore;->createBlockingProgressDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 4025
    :pswitch_6
    const v0, 0x20403d0

    const v1, 0x20403d1

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/app/FilePickerCore;->createMakeSureDialog(III)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 4028
    :pswitch_7
    invoke-direct {p0, v0, v0, v2}, Lcom/htc/app/FilePickerCore;->createMakeSureDialog(III)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 4031
    :pswitch_8
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->createDownloadDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 4033
    :pswitch_9
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->createDownloadFailDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 4013
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_9
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 2842
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x204014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v5, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20800c2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2846
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x204021a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2848
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x204014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2850
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2854
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->doDestroy()V

    .line 2855
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->unregisterSdcardReceiver()V

    .line 2856
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissProcessingDialog()V

    .line 2857
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->dismissLoadingDialog()V

    .line 2858
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    if-eqz v1, :cond_0

    .line 2859
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper;->close()V

    .line 2863
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2868
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2869
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mInitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2873
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 2874
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->clearHandler()V

    .line 2876
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v1, :cond_3

    .line 2877
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->close()V

    .line 2879
    :cond_3
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-eqz v1, :cond_4

    .line 2880
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerActionBarExtController;->cleanContainerEnvironment()V

    .line 2884
    :cond_4
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilter:[Ljava/lang/String;

    .line 2885
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 2886
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 2887
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    .line 2888
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 2889
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    .line 2891
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mSdcardListener:Lcom/htc/app/FilePickerCore$SdcardListener;

    .line 2892
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 2893
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    .line 2894
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    if-eqz v1, :cond_5

    .line 2895
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->close()V

    .line 2897
    :cond_5
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownLocalAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    .line 2898
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    if-eqz v1, :cond_6

    .line 2899
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerAppDropDownAdapter;->close()V

    .line 2901
    :cond_6
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mAppDropDownCloudAdapter:Lcom/htc/app/FilePickerAppDropDownAdapter;

    .line 2903
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfTypeListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 2904
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 2905
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mHeaderOfFavoriteListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 2907
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->recent_view:Lcom/htc/app/FilePickerListView;

    .line 2908
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->favorite_view:Lcom/htc/app/FilePickerListView;

    .line 2909
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 2910
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 2911
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    if-eqz v1, :cond_7

    .line 2912
    iget-object v1, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerDBHelper;->close()V

    .line 2913
    :cond_7
    iput-object v4, p0, Lcom/htc/app/FilePickerCore;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    .line 2915
    return-void

    .line 2864
    :catch_0
    move-exception v0

    .line 2866
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3987
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 3947
    const/16 v4, 0x54

    if-ne v4, p1, :cond_4

    .line 3948
    const/4 v2, 0x0

    .line 3949
    .local v2, isSearchBarVisibled:Z
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-eqz v4, :cond_0

    .line 3950
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerActionBarExtController;->isSearchBarVisibled()Z

    move-result v2

    .line 3952
    :cond_0
    if-eqz v2, :cond_2

    .line 3953
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->hideSearchBar()V

    .line 3983
    .end local v2           #isSearchBarVisibled:Z
    :cond_1
    :goto_0
    return v3

    .line 3955
    .restart local v2       #isSearchBarVisibled:Z
    :cond_2
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v4

    invoke-static {v4}, Lcom/htc/app/FilePickerUtil;->isLocalDataSourceType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3957
    const-string v4, "Tab_Type"

    iget-object v5, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3958
    const/4 v0, 0x0

    .line 3959
    .local v0, fileCount:I
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v4, :cond_3

    .line 3960
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v0

    .line 3961
    :cond_3
    iget-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    if-eqz v4, :cond_1

    if-lez v0, :cond_1

    .line 3962
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showSearchBar()V

    goto :goto_0

    .line 3969
    .end local v0           #fileCount:I
    .end local v2           #isSearchBarVisibled:Z
    :cond_4
    const/4 v4, 0x4

    if-ne v4, p1, :cond_6

    .line 3970
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerActionBarExtController;->isSearchBarVisibled()Z

    move-result v2

    .line 3971
    .restart local v2       #isSearchBarVisibled:Z
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerActionBarExtController;->isActionBarContainerBackUpEnabled()Z

    move-result v1

    .line 3974
    .local v1, isActionBarContainerBackUpEnabled:Z
    if-eqz v2, :cond_5

    .line 3975
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->hideSearchBar()V

    goto :goto_0

    .line 3978
    :cond_5
    if-eqz v1, :cond_6

    .line 3979
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->performBackKey()V

    goto :goto_0

    .line 3983
    .end local v1           #isActionBarContainerBackUpEnabled:Z
    .end local v2           #isSearchBarVisibled:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 3075
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3076
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v0, :cond_0

    .line 3077
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3078
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    if-eqz v0, :cond_1

    .line 3079
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mTypeDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-interface {v0}, Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;->onFileScanEnd()V

    .line 3081
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v0, :cond_2

    .line 3082
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3083
    :cond_2
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoriteDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    if-eqz v0, :cond_3

    .line 3084
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mFavoriteDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-interface {v0}, Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;->onFileScanEnd()V

    .line 3086
    :cond_3
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v0, :cond_4

    .line 3087
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 3088
    :cond_4
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    if-eqz v0, :cond_5

    .line 3089
    iget-object v0, p0, Lcom/htc/app/FilePickerCore;->mRecentDataSetChangedListener:Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;

    invoke-interface {v0}, Lcom/htc/app/FilePickerListAdapter$onDataSetChangedListener;->onFileScanEnd()V

    .line 3093
    :cond_5
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)V
    .locals 6
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 2918
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 2919
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 2960
    :goto_0
    return-void

    .line 2921
    :pswitch_0
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v0

    .line 2922
    .local v0, dataSourceType:I
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v4

    invoke-static {v4}, Lcom/htc/app/FilePickerUtil;->isLocalDataSourceType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2923
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 2924
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchLocalPicker()V

    goto :goto_0

    .line 2926
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getCloudHelperInstance()Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/htc/app/FilePickerCloudHelper;->setServiceRefresh(IZ)V

    .line 2927
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4, v0}, Lcom/htc/app/FilePickerUtil;->setDataSourceType(I)V

    .line 2929
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v4, v0}, Lcom/htc/app/FilePickerCloudHelper;->hasAnyAccountSignIn(I)Z

    move-result v3

    .line 2930
    .local v3, isSingIn:Z
    if-eqz v3, :cond_1

    .line 2931
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    .line 2933
    iget-boolean v4, p0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    if-nez v4, :cond_1

    .line 2934
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 2938
    :cond_1
    iget-boolean v4, p0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    if-eqz v4, :cond_2

    .line 2939
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFolderPicker()V

    goto :goto_0

    .line 2941
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->launchCloudFilePicker()V

    goto :goto_0

    .line 2947
    .end local v0           #dataSourceType:I
    .end local v3           #isSingIn:Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 2950
    :pswitch_2
    const/4 v2, 0x0

    .line 2951
    .local v2, isSearchBarVisibled:Z
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    if-eqz v4, :cond_3

    .line 2952
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mActionBarExtCtrl:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerActionBarExtController;->isSearchBarVisibled()Z

    move-result v2

    .line 2953
    :cond_3
    if-eqz v2, :cond_4

    .line 2954
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->hideSearchBar()V

    goto :goto_0

    .line 2956
    :cond_4
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showSearchBar()V

    goto :goto_0

    .line 2919
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/high16 v5, 0x100

    .line 203
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 204
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 206
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 207
    .local v1, w:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "common_app_bkg"

    const v4, 0x2080001

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 209
    .local v0, bgId:I
    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 211
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Extra_Sense_Version:Ljava/lang/String;

    const-string v3, "4.0a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/Window;->setFlags(II)V

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public onPrepareDialog()V
    .locals 0

    .prologue
    .line 2963
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 22
    .parameter "menu"

    .prologue
    .line 2966
    const/4 v9, 0x0

    .line 2967
    .local v9, enableSortOptionMenu:Z
    const/4 v8, 0x0

    .line 2968
    .local v8, enableSearchOptionMenu:Z
    const/4 v7, 0x0

    .line 2970
    .local v7, enableRefreshOptionMenu:Z
    const/4 v10, 0x0

    .line 2971
    .local v10, fileCount:I
    const/16 v16, 0x0

    .line 2977
    .local v16, listCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v6

    .line 2978
    .local v6, dataSourceType:I
    invoke-static {v6}, Lcom/htc/app/FilePickerUtil;->isCloudDataSourceType(I)Z

    move-result v11

    .line 2979
    .local v11, isCloudDataSourceType:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x20200bf

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 2980
    .local v17, local_carousel_view:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-nez v20, :cond_1

    .line 2981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 2982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v10

    .line 2983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/app/FilePickerListAdapter;->getCount()I

    move-result v16

    .line 2985
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    if-lez v16, :cond_8

    const/4 v9, 0x1

    .line 2986
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    if-lez v10, :cond_9

    const/4 v8, 0x1

    .line 2987
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z

    .line 2989
    :cond_1
    const/16 v19, 0x0

    .line 2990
    .local v19, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    if-eqz v11, :cond_b

    .line 2991
    const/4 v3, 0x0

    .line 2992
    .local v3, accounts:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 2993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v3

    .line 2994
    :cond_2
    if-eqz v3, :cond_a

    array-length v0, v3

    move/from16 v20, v0

    if-lez v20, :cond_a

    .line 2995
    const/16 v20, 0x0

    aget-object v20, v3, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v19

    .line 3003
    .end local v3           #accounts:[Ljava/lang/String;
    :goto_2
    if-eqz v19, :cond_3

    .line 3004
    invoke-virtual/range {v19 .. v19}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getFolderAdapter()Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v18

    .line 3005
    .local v18, moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    if-eqz v18, :cond_3

    .line 3006
    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort()Z

    move-result v9

    .line 3007
    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/FilePickerFolderAdapter;->isCanSort()Z

    move-result v7

    .line 3011
    .end local v18           #moreExAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    :cond_3
    const/4 v13, 0x1

    .line 3012
    .local v13, isSearchMenuItemVisabled:Z
    const/4 v12, 0x1

    .line 3013
    .local v12, isRefreshMenuItemVisabled:Z
    const/4 v15, 0x1

    .line 3014
    .local v15, isSortMenuItemVisabled:Z
    invoke-static {v6}, Lcom/htc/app/FilePickerUtil;->isCloudDataSourceType(I)Z

    move-result v11

    .line 3015
    if-eqz v11, :cond_c

    .line 3016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/htc/app/FilePickerCloudHelper;->hasAnyAccountSignIn(I)Z

    move-result v14

    .line 3017
    .local v14, isSingIn:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    .line 3018
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 3019
    const/4 v7, 0x1

    .line 3020
    const/4 v8, 0x0

    .line 3022
    :cond_4
    if-nez v14, :cond_5

    .line 3023
    const/4 v7, 0x0

    .line 3024
    const/4 v8, 0x0

    .line 3025
    const/4 v13, 0x0

    .line 3026
    const/4 v12, 0x0

    .line 3027
    const/4 v15, 0x0

    .line 3046
    .end local v14           #isSingIn:Z
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->mIsUsbConnectionMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 3047
    :cond_6
    const/4 v13, 0x0

    .line 3048
    const/4 v12, 0x0

    .line 3049
    const/4 v15, 0x0

    .line 3055
    :cond_7
    :goto_4
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1, v8}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 3056
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1, v7}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 3057
    const/16 v20, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1, v9}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 3059
    const/16 v21, 0x3

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->mIsSearchMenuItemVisabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3060
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1, v12}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3061
    const/16 v21, 0x2

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->mIsSortMenuItemVisabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3062
    return-void

    .line 2985
    .end local v12           #isRefreshMenuItemVisabled:Z
    .end local v13           #isSearchMenuItemVisabled:Z
    .end local v15           #isSortMenuItemVisabled:Z
    .end local v19           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2986
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2997
    .restart local v3       #accounts:[Ljava/lang/String;
    .restart local v19       #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_a
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v19

    goto/16 :goto_2

    .line 3000
    .end local v3           #accounts:[Ljava/lang/String;
    :cond_b
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v19

    goto/16 :goto_2

    .line 3030
    .restart local v12       #isRefreshMenuItemVisabled:Z
    .restart local v13       #isSearchMenuItemVisabled:Z
    .restart local v15       #isSortMenuItemVisabled:Z
    :cond_c
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v5

    .line 3031
    .local v5, bInternalStorageAvailable:Z
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v4

    .line 3032
    .local v4, bExternalStorageAvailable:Z
    if-nez v5, :cond_d

    if-eqz v4, :cond_e

    .line 3033
    :cond_d
    const/4 v13, 0x1

    .line 3034
    const/4 v12, 0x1

    .line 3035
    const/4 v15, 0x1

    .line 3036
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/app/FilePickerCore;->setMenuItemVisibled(Landroid/view/Menu;Z)V

    goto/16 :goto_3

    .line 3038
    :cond_e
    const/4 v7, 0x0

    .line 3039
    const/4 v13, 0x0

    .line 3040
    const/4 v12, 0x0

    .line 3041
    const/4 v15, 0x0

    .line 3042
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/app/FilePickerCore;->setMenuItemVisibled(Landroid/view/Menu;Z)V

    goto/16 :goto_3

    .line 3050
    .end local v4           #bExternalStorageAvailable:Z
    .end local v5           #bInternalStorageAvailable:Z
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FilePickerCore;->mIsCloudFolderPickerEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 3051
    const/4 v13, 0x0

    .line 3052
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 3059
    :cond_10
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 3061
    :cond_11
    const/16 v20, 0x0

    goto :goto_6
.end method

.method performBackKey()V
    .locals 4

    .prologue
    .line 646
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v3}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v1

    .line 647
    .local v1, dataSourceType:I
    iget-object v3, p0, Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    invoke-virtual {v3, v1}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, accounts:[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v2

    .line 651
    .local v2, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    if-eqz v2, :cond_0

    #calls: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->loadUpFolders()Z
    invoke-static {v2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$800(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 652
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->showLandingPage()V

    .line 653
    :cond_1
    return-void

    .line 648
    .end local v2           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method performListViewOnItemClickListenerItemClick(ILandroid/view/View;Lcom/htc/app/FilePickerListAdapter;)V
    .locals 9
    .parameter "position"
    .parameter "view"
    .parameter "adapter"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 778
    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/htc/app/FilePickerListAdapter;->getCount()I

    move-result v8

    if-le p1, v8, :cond_2

    .line 779
    :cond_0
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;

    const-string v7, "Click at out of index item"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_1
    :goto_0
    return-void

    .line 782
    :cond_2
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p3, v8}, Lcom/htc/app/FilePickerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/app/ItemInfo;

    .line 784
    .local v4, selectedItem:Lcom/htc/app/ItemInfo;
    invoke-virtual {v4}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v8

    if-nez v8, :cond_1

    .line 787
    iget v8, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    if-nez v8, :cond_5

    .line 788
    new-array v3, v6, [Ljava/lang/String;

    .line 789
    .local v3, output:[Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/app/ItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    .line 791
    new-array v0, v6, [Ljava/lang/String;

    .line 792
    .local v0, accountIds:[Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/app/ItemInfo;->getAccountId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 794
    new-array v5, v6, [Ljava/lang/String;

    .line 795
    .local v5, serviceNames:[Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/app/ItemInfo;->getServiceName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 801
    const-string v6, "Tab_Type"

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 802
    invoke-virtual {p3}, Lcom/htc/app/FilePickerListAdapter;->stopScan()V

    .line 804
    :cond_3
    iget v6, p0, Lcom/htc/app/FilePickerCore;->mSortType:I

    iget v8, p0, Lcom/htc/app/FilePickerCore;->mSortOrder:I

    invoke-direct {p0, v3, v6, v8}, Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V

    .line 805
    invoke-direct {p0, v3, v5, v0}, Lcom/htc/app/FilePickerCore;->getBundle([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 806
    .local v1, bundle:Landroid/os/Bundle;
    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerCore;->onResult(Landroid/os/Bundle;)V

    .line 807
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->finish()V

    .line 813
    .end local v0           #accountIds:[Ljava/lang/String;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #output:[Ljava/lang/String;
    .end local v5           #serviceNames:[Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v6, "Tab_Type"

    iget-object v8, p0, Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 814
    invoke-virtual {p3, v7}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    goto :goto_0

    .line 808
    :cond_5
    iget v8, p0, Lcom/htc/app/FilePickerCore;->mSelectionType:I

    if-ne v8, v6, :cond_4

    .line 809
    const v8, 0x20200b3

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    .line 810
    .local v2, htcCheckBox:Lcom/htc/widget/HtcCheckBox;
    invoke-virtual {v4}, Lcom/htc/app/ItemInfo;->isChecked()Z

    move-result v8

    if-nez v8, :cond_6

    :goto_2
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_6
    move v6, v7

    goto :goto_2
.end method

.method public setFavoritesFragment(Lcom/htc/app/FilePickerFavoritesFragment;)V
    .locals 0
    .parameter "fragement"

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerFavoritesFragment:Lcom/htc/app/FilePickerFavoritesFragment;

    .line 1484
    return-void
.end method

.method setListViewHeaderAnimationEnabled(IZ)V
    .locals 10
    .parameter "resId"
    .parameter "visibled"

    .prologue
    const/4 v9, 0x0

    .line 3487
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FilePickerListView;

    .line 3488
    .local v1, listView:Lcom/htc/app/FilePickerListView;
    if-eqz v1, :cond_0

    .line 3489
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3490
    .local v5, rocketImage:Landroid/widget/ImageView;
    const v6, 0x20a0004

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3491
    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 3493
    .local v4, rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;
    const v6, 0x20200c6

    invoke-virtual {v1, v6}, Lcom/htc/app/FilePickerListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemSeparator;

    .line 3495
    .local v0, htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    if-nez v0, :cond_1

    .line 3509
    .end local v0           #htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    .end local v4           #rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;
    .end local v5           #rocketImage:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 3497
    .restart local v0       #htcListItemSeparator:Lcom/htc/widget/HtcListItemSeparator;
    .restart local v4       #rocketAnimation:Landroid/graphics/drawable/AnimationDrawable;
    .restart local v5       #rocketImage:Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v0, v9, v4}, Lcom/htc/widget/HtcListItemSeparator;->setIcon(ILandroid/graphics/drawable/Drawable;)V

    .line 3498
    if-eqz p2, :cond_2

    .line 3499
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20400a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3501
    .local v2, loadingStr:Ljava/lang/String;
    invoke-virtual {v0, v9, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 3502
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 3504
    .end local v2           #loadingStr:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/htc/app/FilePickerUtil;->getFormatedTime(J)Ljava/lang/String;

    move-result-object v3

    .line 3505
    .local v3, refreshTime:Ljava/lang/String;
    invoke-virtual {v0, v9, v3}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 3506
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method setNoFileFoundTextOfTypeView()V
    .locals 8

    .prologue
    const v7, 0x2040159

    const v6, 0x2040149

    .line 3433
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x20200cb

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3434
    .local v3, typeViewLayout:Landroid/view/View;
    if-nez v3, :cond_1

    .line 3462
    :cond_0
    :goto_0
    return-void

    .line 3436
    :cond_1
    const v4, 0x20200aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3437
    .local v1, emptyView:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 3438
    .local v2, noFileFoundText:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v0

    .line 3440
    .local v0, dataSourceType:I
    sparse-switch v0, :sswitch_data_0

    .line 3456
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3459
    :goto_1
    if-eqz v1, :cond_0

    .line 3460
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3442
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3443
    goto :goto_1

    .line 3445
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3446
    goto :goto_1

    .line 3448
    :sswitch_2
    sget-boolean v4, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v4, :cond_2

    .line 3449
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3451
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/FilePickerCore;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3454
    goto :goto_1

    .line 3440
    nop

    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_2
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method setNoFileViewEmptyTextOfTypeView()V
    .locals 4

    .prologue
    .line 3465
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x20200cb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3466
    .local v1, typeViewLayout:Landroid/view/View;
    if-nez v1, :cond_1

    .line 3472
    :cond_0
    :goto_0
    return-void

    .line 3468
    :cond_1
    const v2, 0x20200aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3469
    .local v0, emptyView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 3470
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRecentFragment(Lcom/htc/app/FilePickerRecentFragment;)V
    .locals 0
    .parameter "fragement"

    .prologue
    .line 1494
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mFilePickerRecentFragment:Lcom/htc/app/FilePickerRecentFragment;

    .line 1495
    return-void
.end method

.method setTypeAdapter(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter "typeAdapter"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 115
    return-void
.end method
